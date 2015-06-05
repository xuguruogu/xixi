package com.askj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.askj.dao.SMDao;
import com.askj.entity.Page;
import com.askj.entity.SM;
import com.askj.util.DateUtil;

@Controller
@RequestMapping("/sm")
public class SMController {

	@Autowired
	private SMDao smDao;
	
	@RequestMapping(value = "/smlist", produces = "text/html;charset=UTF-8")
	public @ResponseBody String smList(Page page){
		p("smlist");
		try {
			if(page==null){
				page = new Page();
			}
			page.setStartIndex(page.getPageIndex()*page.getPageSize());
			List<SM> list = smDao.select_by_page(new SM(), page);
			String json = JSON.toJSONString(list);
			String res = "{\"list\":"+json+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	//后台
	@RequestMapping("/sm")
	public String sm(Model model, Page page){
		p("sm");
		if(page==null){
			page = new Page();
		}
		int count = smDao.selectCount(new SM(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "sm/sm";
	}
	
	@RequestMapping("/smList")
	public String smList(Model model, Page page){
		p("smList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<SM> smList = smDao.select_by_page(new SM(), page);
		model.addAttribute("smList", smList);
		return "sm/smList";
	}

	@RequestMapping("/toAdd")
	public String toAdd(){
		return "sm/add";
	}
	
	@RequestMapping("/add")
	public @ResponseBody String add(SM sm){
		p("add");
		try {
			String publishTime = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			sm.setPublishTime(publishTime);
			smDao.insert(sm);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(int[] ids){
		p("delete");
		try {
			for(int id:ids){
				smDao.delete_by_id(new SM(), id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/sm/"+str);
	}
}
