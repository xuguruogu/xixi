package com.xuguruogu.lingxi.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.PMDao;
import com.xuguruogu.lingxi.dao.PMRepliesDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.PM;
import com.xuguruogu.lingxi.entity.PMReplies;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/pmReplies")
public class PMRepliesController {
	@Autowired
	private PMRepliesDao pmRepliesDao;
	
	@Autowired
	private PMDao pmDao;
	
	@Autowired
	private MMDao mmDao;
	
	@RequestMapping("/repliespm")
	public @ResponseBody String repliesPM(HttpServletRequest req){
		p("/repliespm");
		try {
			/*
			 * 逻辑：传递customerID与content
			 * 1、判断是私信接收者还是发送者
			 */
			int pmID = Integer.parseInt(req.getParameter("pmID"));
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			PM pm = pmDao.select_by_id(new PM(), pmID);
			int parentReplierID = 0;
			int replierID = customerID;
			//如果回复人是私信接收者
			if(customerID==pm.getReceiver().getId()){
				parentReplierID = pm.getSender().getId();
			}else if(customerID==pm.getSender().getId()){
				parentReplierID = pm.getReceiver().getId();
			}else{
				return "{\"checked\":\"1\"}";
			}
			String content = req.getParameter("content");
			Customer parentReplier = new Customer(parentReplierID);
			Customer replier = new Customer(replierID);
			PMReplies pmReplies = new PMReplies(pmID, parentReplier, replier, content);
			pmRepliesDao.insert(pmReplies);
			//私信后发送消息给接收私信的人
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 2;
			String msgContent = MsgType.repliesPm;
			MM mm = new MM(parentReplier, replier, msgContent, sendTime, isRead, type);
			System.out.println("获取最近一次插入数据的pmID： "+pmID);
			mm.setPmID(pmID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/pmReplies/"+str);
	}
}
