package com.xuguruogu.lingxi.form;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.CustomerDao;
import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.XQZDao;
import com.xuguruogu.lingxi.dao.XQZRepliesDao;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.XQZ;
import com.xuguruogu.lingxi.entity.XQZReplies;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/form/xqz")
public class XQZForm {
	
	@Autowired
	private XQZDao xqzDao;
	
	@Autowired
	private XQZRepliesDao xqzRepliesDao;
	
	@Autowired
	private MMDao mmDao;
	
	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping(value="lookxqz",produces="text/html;charset=UTF-8")
	public @ResponseBody String lookXqz(String xqzID){
		p("lookxqz");
		try {
			int id = Integer.parseInt(xqzID);
			XQZ xqz = xqzDao.select_by_id(new XQZ(), id);
			if(xqz!=null){
				List<XQZReplies> list = xqzRepliesDao.select_by_xqzID(id);
				xqz.setReplies(list);
				String diff = DateUtil.dateDiff(xqz.getPublishTime(), DateUtil.now("yyyy-MM-dd HH:mm:ss"), "yyyy-MM-dd HH:mm:ss");
				xqz.setPublishTime(diff);
				String str = JSON.toJSONString(xqz);
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
	
	@RequestMapping(value="/xqzlist",produces="text/html;charset=UTF-8")
	public @ResponseBody String xqzList(Page page){
		p("xqzlist");
		try {
			if(page==null){
				page = new Page();
			}
			page.setStartIndex(page.getPageIndex()*page.getPageSize());
			List<XQZ> list = new ArrayList<XQZ>();
			List<XQZ> tempList = xqzDao.select_by_page(new XQZ(), page);
			for(XQZ xqz:tempList){
				String diff = DateUtil.dateDiff(xqz.getPublishTime(), DateUtil.now("yyyy-MM-dd HH:mm:ss"), "yyyy-MM-dd HH:mm:ss");
				xqz.setPublishTime(diff);
				list.add(xqz);
			}
			String res = "{\"list\":"+JSON.toJSONString(list)+",\"checked\":\"0\"}";
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	@RequestMapping("/releasexqz")
	public @ResponseBody String releaseXqz(HttpServletRequest req){
		p("releasexqz");
		try {
			int publisherID = Integer.parseInt(req.getParameter("publisherID"));
			/*Customer customer = customerDao.select_by_id(new Customer(), publisherID);
			//判断帐号状态
			if(customer.getStatus()==1){
				//帐号停用
				System.out.println("帐号停用>>>>>>"+JSON.toJSONString(customer));
				return "{\"checked\":\"2\"}";
			}
*/			String content = req.getParameter("content");
			String publishTime = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			Customer publisher = new Customer(publisherID);
			XQZ xqz = new XQZ(publisher, publishTime, content);
			System.out.println(JSON.toJSON(xqz));
			xqzDao.insert(xqz);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}

	/**
	 * 小圈子点赞
	 * @param req
	 * @return
	 */
	@RequestMapping("/likexqz")
	public synchronized @ResponseBody String likeXqz(HttpServletRequest req){
		p("likexqz");
		try {
			int xqzID = Integer.parseInt(req.getParameter("xqzID"));
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			XQZ xqz = xqzDao.select_by_id(new XQZ(), xqzID);
			if(xqz==null){
				throw new Exception();
			}
			xqz.setLikeIds(xqz.getLikeIds()==null?"":xqz.getLikeIds());
			//判断是否已点赞
			if(xqz.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>已点赞");
				return "{\"checked\":\"1\"}";
			}
			if(xqz.getLikeCount()<=0){
				xqz.setLikeCount(1);
				xqz.setLikeIds(customerID+"");
			}else{
				xqz.setLikeCount(xqz.getLikeCount()+1);//点赞数+1
				xqz.setLikeIds(xqz.getLikeIds()+","+customerID);
			}
			xqzDao.updateLike(xqz);
			//判断是否是对自己的点赞
			if(customerID==xqz.getPublisher().getId()){
				return "{\"checked\":\"0\"}";
			}
			//点赞后发送消息给小圈子的发布者
			Customer receiver = xqz.getPublisher();
			Customer sender = new Customer(customerID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 1;
			String msgContent = MsgType.likeXqz;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setXqzID(xqzID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	@RequestMapping("/cancellikexqz")
	public synchronized @ResponseBody String cancelLikeXqz(HttpServletRequest req){
		p("cancellikexqz");
		try {
			int xqzID = Integer.parseInt(req.getParameter("xqzID"));
			String customerID = req.getParameter("customerID");
			XQZ xqz = xqzDao.select_by_id(new XQZ(), xqzID);
			if(xqz==null){
				throw new Exception();
			}
			xqz.setLikeIds(xqz.getLikeIds()==null?"":xqz.getLikeIds());
			if(!xqz.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>已取消点赞");
				return "{\"checked\":\"1\"}";
			}
			xqz.setLikeCount(xqz.getLikeCount()-1);
			String likeIds = "";
			if(xqz.getLikeIds().contains(",")){
				StringBuffer sf = new StringBuffer();
				for(String str: xqz.getLikeIds().split(",")){
					if(!str.equals(customerID)){
						sf.append(str+",");
					}
				}
				likeIds = sf.substring(0, sf.lastIndexOf(","));
			}
			xqz.setLikeIds(likeIds);
			xqzDao.updateLike(xqz);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	
	@RequestMapping("/dislikexqz")
	public synchronized @ResponseBody String dislikeXqz(HttpServletRequest req){
		p("dislikexqz");
		try {
			int xqzID = Integer.parseInt(req.getParameter("xqzID"));
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			XQZ xqz = xqzDao.select_by_id(new XQZ(), xqzID);
			if(xqz==null){
				throw new Exception();
			}
			xqz.setDislikeIds(xqz.getDislikeIds()==null?"":xqz.getDislikeIds());
			//判断是否已丢狗屎
			if(xqz.getDislikeIds().contains(customerID+"")){
				System.out.println(">>>>已丢狗屎");
				return "{\"checked\":\"1\"}";
			}
			if(xqz.getDislikeCount()<=0){
				xqz.setDislikeCount(1);
				xqz.setDislikeIds(customerID+"");
			}else{
				xqz.setDislikeCount(xqz.getDislikeCount()+1);//丢狗屎数+1
				xqz.setDislikeIds(xqz.getDislikeIds()+","+customerID);
			}
			xqzDao.updateDislike(xqz);
			//判断是否是对自己duang
			if(customerID==xqz.getPublisher().getId()){
				return "{\"checked\":\"0\"}";
			}
			//丢狗屎后发送消息给小圈子的发布者
			Customer receiver = xqz.getPublisher();
			Customer sender = new Customer(customerID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 1;
			String msgContent = MsgType.dislikeXqz;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setXqzID(xqzID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	@RequestMapping("/canceldislikexqz")
	public synchronized @ResponseBody String cancelDisikeXqz(HttpServletRequest req){
		p("canceldislikexqz");
		try {
			int xqzID = Integer.parseInt(req.getParameter("xqzID"));
			String customerID = req.getParameter("customerID");
			XQZ xqz = xqzDao.select_by_id(new XQZ(), xqzID);
			if(xqz==null){
				throw new Exception();
			}
			xqz.setDislikeIds(xqz.getDislikeIds()==null?"":xqz.getDislikeIds());
			//判断是否已取消丢狗屎
			if(!xqz.getDislikeIds().contains(customerID+"")){
				System.out.println(">>>>已取消丢狗屎");
				return "{\"checked\":\"1\"}";
			}
			xqz.setDislikeCount(xqz.getDislikeCount()-1);
			String dislikeIds = "";
			if(xqz.getDislikeIds().contains(",")){
				StringBuffer sf = new StringBuffer();
				for(String str: xqz.getDislikeIds().split(",")){
					if(!str.equals(customerID)){
						sf.append(str+",");
					}
				}
				dislikeIds = sf.substring(0, sf.lastIndexOf(","));
			}
			xqz.setDislikeIds(dislikeIds);
			xqzDao.updateDislike(xqz);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	//后台
	@RequestMapping("/xqz")
	public String xqz(Model model, Page page){
		p("xqz");
		if(page==null){
			page = new Page();
		}
		int count = xqzDao.selectCount(new XQZ(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "xqz/xqz";
	}
	
	@RequestMapping("/xqzList")
	public String xqzList(Model model, Page page){
		p("xqzList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<XQZ> xqzList = xqzDao.select_by_page(new XQZ(), page);
		model.addAttribute("xqzList", xqzList);
		model.addAttribute("page", page);
		return "xqz/xqzList";
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(int[] ids){
		p("delete");
		try {
			for(int id:ids){
				xqzDao.delete_by_id(new XQZ(), id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/xqzInfo")
	public String xqzInfo(Model model, int xqzID){
		p("xqzInfo");
		XQZ xqz = xqzDao.select_by_id(new XQZ(), xqzID);
		List<XQZReplies> reps = xqzRepliesDao.select_by_xqzID(xqzID);
		xqz.setReplies(reps);
		model.addAttribute("xqz", xqz);
		return "xqz/xqzInfo";
	}
	
	private static void p(String str){
		System.out.println("[controller]/xqz/"+str);
	}
}
