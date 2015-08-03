package com.xuguruogu.lingxi.form;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xuguruogu.lingxi.dao.LoginLogDao;
import com.xuguruogu.lingxi.entity.LoginLog;
import com.xuguruogu.lingxi.entity.Page;

@Controller
@RequestMapping("/form/loginLog")
public class LoginLogForm {
	
	@Autowired
	private LoginLogDao loginLogDao;
	
	@RequestMapping("/loginLog")
	public String loginLog(Model model, Page page){
		p("/loginLog");
		if(page==null){
			page = new Page();
		}
		int count = loginLogDao.selectCount(new LoginLog(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "loginLog/loginLog";
	}
	@RequestMapping("/loginLogList")
	public String loginLogList(Model model, Page page){
		p("/loginLogList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<LoginLog> loginLogList = loginLogDao.select_by_page(new LoginLog(), page);
		model.addAttribute("loginLogList", loginLogList);
		return "loginLog/loginLogList";
	}
	
	private static void p(String str){
		System.out.println("[controller]/loginLog/"+str);
	}
}
