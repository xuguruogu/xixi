package com.xuguruogu.lingxi.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.PMDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.PM;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/pm")
public class PMController {
	
	@Autowired
	private PMDao pmDao;
	
	@Autowired
	private MMDao mmDao;
	
	@RequestMapping("/sendpm")
	public @ResponseBody String sendPM(HttpServletRequest req){
		p("sendpm");
		try {
			int senderID = Integer.parseInt(req.getParameter("senderID"));
			int receiverID = Integer.parseInt(req.getParameter("receiverID"));
			String content = req.getParameter("content");
			Customer sender = new Customer(senderID);
			Customer receiver = new Customer(receiverID);
			String lastUpTime = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			PM pm = new PM(sender, receiver, content, lastUpTime);
			pmDao.insert(pm);
			//私信后发送消息给接收私信的人
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 2;
			String msgContent = MsgType.sendPm;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			int pmID = pmDao.select_last_insert();
			System.out.println("获取最近一次插入数据的pmID： "+pmID);
			mm.setPmID(pmID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	@RequestMapping(value="/pmlist",produces="text/html;charset=UTF-8")
	public @ResponseBody String pmlist(Page page){
		p("pmlist"); 
		try {
			if(page==null){
				page = new Page();
			}
			page.setStartIndex(page.getPageIndex()*page.getPageSize());
			List<PM> list = pmDao.select_by_page(new PM(), page);
			String res = "{\"list\":"+JSON.toJSONString(list)+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	@RequestMapping(value="/lookpm",produces="text/html;charset=UTF-8")
	public @ResponseBody String lookPM(String pmID){
		p("lookpm");
		try {
			int id = Integer.parseInt(pmID);
			PM pm = pmDao.select_by_id(new PM(), id);
			if(pm!=null){
				String str = JSON.toJSONString(pm);
				String res = str.substring(0, str.lastIndexOf("}")) + ",\"checked\":\"0\"}";
				return res;
			}else{
				return "{\"checked\":\"1\"}";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/pm/"+str);
	}
}
