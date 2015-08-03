package com.xuguruogu.lingxi.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.XQZDao;
import com.xuguruogu.lingxi.dao.XQZRepliesDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.XQZ;
import com.xuguruogu.lingxi.entity.XQZReplies;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/xqzReplies")
public class XQZRepliesController {
	
	@Autowired
	private XQZRepliesDao xqzRepliesDao;
	
	@Autowired
	private XQZDao xqzDao;
	
	@Autowired
	private MMDao mmDao;
	
	@RequestMapping(value="/replieslist",produces="text/html;charset=UTF-8")
	public @ResponseBody String repliesList(int xqzID){
		p("replieslist");
		List<XQZReplies> list = xqzRepliesDao.select_by_xqzID(xqzID);
		String res = "{\"list\":"+JSON.toJSONString(list)+"}";
		return res;
	}
	
	@RequestMapping(value="/repliesxqz",produces="text/html;charset=UTF-8")
	public @ResponseBody String repliesXqz(HttpServletRequest req){
		p("repliesxqz");
		try {
			int xqzID = Integer.parseInt(req.getParameter("xqzID"));
			int parentReplierID = Integer.parseInt(req.getParameter("parentReplierID"));
			int replierID = Integer.parseInt(req.getParameter("replierID"));
			String content = req.getParameter("content");
			Customer parentReplier = new Customer(parentReplierID);
			Customer replier = new Customer(replierID);
			XQZReplies xqzReplies = new XQZReplies(xqzID, parentReplier, replier, content);
			xqzRepliesDao.insert(xqzReplies);
			//跟新xqz的回复数
			XQZ xqz =xqzDao.select_by_id(new XQZ(), xqzID);
			xqz.setRepliesCount(xqz.getRepliesCount()+1);
			xqzDao.updateRepliesCount(xqz);
			//判断是否是回复自己
			if(parentReplierID==replierID){
				return "{\"checked\":\"0\"}";
			}
			//在小圈子中回复后发送消息给小圈子的发布者
			Customer receiver = new Customer(parentReplierID);
			Customer sender = new Customer(replierID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 1;
			String msgContent = MsgType.repliesXqz;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setXqzID(xqzID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/xqzReplies/"+str);
	}
}
