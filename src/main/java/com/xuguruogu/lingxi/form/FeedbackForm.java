package com.xuguruogu.lingxi.form;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuguruogu.lingxi.dao.FeedbackDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.Feedback;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.util.DateUtil;

@Controller
@RequestMapping("/form/feedback")
public class FeedbackForm {
	
	@Autowired
	private FeedbackDao feedbackDao;
	
	@RequestMapping("/add")
	public @ResponseBody String add(HttpServletRequest req){
		p("add");
		try {
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			String content = req.getParameter("content");
			String date = DateUtil.now("yyyy-MM-dd");
			Customer customer = new Customer(customerID);
			Feedback fb = new Feedback(customer, content, date);
			feedbackDao.insert(fb);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}

	@RequestMapping("fb")
	public String fb(Model model, Page page){
		p("fb");
		if(page==null){
			page = new Page();
		}
		int count = feedbackDao.selectCount(new Feedback(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "fb/fb";
	}
	
	@RequestMapping("/fbList")
	public String fbList(Model model, Page page){
		p("fbList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Feedback> fbList = feedbackDao.select_by_page(new Feedback(), page);
		model.addAttribute("fbList", fbList);
		return "fb/fbList";
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(int[] ids){
		p("delete");
		try {
			for(int id: ids){
				feedbackDao.delete_by_id(new Feedback(), id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/feedback/"+str);
	}
}
