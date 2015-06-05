package com.askj.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.askj.dao.MMDao;
import com.askj.entity.MM;
import com.askj.entity.Page;
import com.askj.util.DateUtil;

@Controller
@RequestMapping("/mm")
public class MMController {

	@Autowired
	private MMDao mmDao;
	
	@RequestMapping("/newmsg")
	public @ResponseBody String newMsg(String customerID){
		p("newmsg");
		try {
			int id = Integer.parseInt(customerID);
			if(mmDao.selectNewMsg(id)>0){
				System.out.println("id为"+id+"的用户有新消息");
				return "{\"checked\":\"0\"}";
			}else{
				System.out.println("id为"+id+"的用户没有新消息");
				return "{\"checked\":\"1\"}";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
			
		}
	}
	
	@RequestMapping(value="/mmlist",produces="text/html;charset=UTF-8")
	public @ResponseBody String mmlist(Page page){
		p("mmlist");
		try {
			page.setStartIndex(page.getPageIndex()*page.getPageSize());
			List<MM> list = new ArrayList<MM>();
			List<MM> tempList = mmDao.select_by_page(new MM(), page);
			for(MM mm:tempList){
				if(mm.getIsRead()==0){
					mmDao.isRead(mm.getId());
				}
				String diff = DateUtil.dateDiff(mm.getSendTime(), DateUtil.now("yyyy-MM-dd HH:mm"), "yyyy-MM-dd HH:mm");
				mm.setSendTime(diff);
				list.add(mm);
			}
			String res = "{\"list\":"+JSON.toJSONString(list)+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 清空消息
	 * @param customerID
	 * @return
	 */
	@RequestMapping("/clear")
	public @ResponseBody String clear(String customerID){
		p("clear");
		try {
			int id = Integer.parseInt(customerID);
			mmDao.delete_by_customerID(id);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/mm/"+str);
	}
}
