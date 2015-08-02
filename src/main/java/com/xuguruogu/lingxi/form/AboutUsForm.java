package com.xuguruogu.lingxi.form;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.AboutUsDao;
import com.xuguruogu.lingxi.entity.AboutUs;

@Controller
@RequestMapping("/form/aboutUs")
public class AboutUsForm {

	@Autowired
	private AboutUsDao aboutUsDao;
	
	@RequestMapping(value = "/query", produces = "text/html;charset=UTF-8")
	public @ResponseBody String query(){
		p("query");
		try {
			AboutUs au = aboutUsDao.query();
			if(au==null){
				return "{\"checked\":\"1\"}";
			}
			String json = JSON.toJSONString(au);
			String res = json.substring(0, json.lastIndexOf("}"))+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	@RequestMapping("/toUpdate")
	public String toUpdate(Model model){
		p("toUpdate");
		AboutUs au = aboutUsDao.query();
		if(au==null){
			au = new AboutUs();
			aboutUsDao.insert(au);
			int id = aboutUsDao.select_last_insert();
			au.setId(id);
		}
		model.addAttribute("au", au);
		return "aboutUs/aboutUs";
	}
	
	@RequestMapping("/update")
	public @ResponseBody String update(AboutUs au){
		p("update");
		try {
			aboutUsDao.update(au);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/aboutUs/"+str);
	}
}
