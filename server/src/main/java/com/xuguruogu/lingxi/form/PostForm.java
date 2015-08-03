package com.xuguruogu.lingxi.form;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.CommentDao;
import com.xuguruogu.lingxi.dao.CustomerDao;
import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.PostDao;
import com.xuguruogu.lingxi.entity.Comment;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.Post;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/form/post")
public class PostForm {
	
	@Autowired
	private PostDao postDao;
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private MMDao mmDao;
	
	
	@Autowired
	private CustomerDao customerDao;
	
	/**
	 * 鹊桥帖子列表
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/postlist",produces="text/html;charset=UTF-8")
	public @ResponseBody String postlist(Page page){
		p("postlist");
		if(page==null){
			page = new Page();
		}
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Post> list = postDao.select_by_page(new Post(), page);
		String temp_str = JSON.toJSONString(list);
		String res = "{\"list\":"+temp_str+"}";
		return res;
	}
	
	/**
	 * 查看某一帖子详情
	 * @param id	帖子id
	 * @return
	 */
	@RequestMapping(value="/lookpost",produces="text/html;charset=UTF-8")
	public @ResponseBody String lookpost(String id){
		p("lookpost");
		try {
			int temp_id = Integer.parseInt(id);
			Post post = postDao.select_by_id(new Post(), temp_id);
			if(post!=null){
				String str = JSON.toJSONString(post);
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
	
	/**
	 * 发布帖子
	 * @return
	 */
	@RequestMapping("/releasepost")
	public synchronized @ResponseBody String releasePost(HttpServletRequest req){
		p("releasePost");
		try {
			int publisherID = Integer.parseInt(req.getParameter("publisherID"));
			/*Customer customer = customerDao.select_by_id(new Customer(), publisherID);
			//判断帐号状态
			if(customer.getStatus()==1){
				//帐号停用
				System.out.println("帐号停用>>>>>>"+JSON.toJSONString(customer));
				return "{\"checked\":\"2\"}";
			}*/
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			Customer publisher = new Customer(publisherID);
			String publishTime = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			String lastUpTime = publishTime;
			Post post = new Post(title, content, publisher, publishTime, lastUpTime);
			postDao.insert(post);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 对顶端贴子点赞
	 * @param req
	 * @return
	 */
	@RequestMapping("/likepost")
	public synchronized @ResponseBody String likePost(HttpServletRequest req){
		p("likepost");
		try {
			int postID = Integer.parseInt(req.getParameter("postID"));
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			//获取帖子信息
			Post post = postDao.select_by_id(new Post(), postID);
			if(post==null){
				throw new Exception();
			}
			//如果已点过赞
			post.setLikeIds(post.getLikeIds()==null?"":post.getLikeIds());
			if(post.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>id为"+customerID+"的用户已点过id为"+postID+"的帖子");
				return "{\"checked\":\"1\"}";
			}
			//如果没人点过赞
			if(post.getLikeIds()==null||post.getLikeIds().equals("")){
				post.setLikeIds(customerID+"");
			}else{
				post.setLikeIds(post.getLikeIds()+","+customerID);
			}
			
			//点赞数+1
			post.setLikeCount(post.getLikeCount()+1);
			postDao.updatePostLike(post);
			//判断是否给自己点赞,是就直接返回
			if(customerID==post.getPublisher().getId()){
				return "{\"checked\":\"0\"}";
			}
			//点赞后发送消息给发帖人
			Customer receiver = post.getPublisher();
			Customer sender = new Customer(customerID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 0;
			String msgContent = MsgType.likePost;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setPostID(postID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	/**
	 * 对顶端贴子取消点赞
	 * @param req
	 * @return
	 */
	@RequestMapping("/dislikepost")
	public synchronized @ResponseBody String disLikePost(HttpServletRequest req){
		p("dislikepost");
		try {
			int postID = Integer.parseInt(req.getParameter("postID"));
			String customerID = req.getParameter("customerID");
			Post post = postDao.select_by_id(new Post(), postID);
			if(post==null){
				throw new Exception();
			}
			post.setLikeIds(post.getLikeIds()==null?"":post.getLikeIds());
			//判断是否已取消
			if(!post.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>已取消");
				return "{\"checked\":\"1\"}";
			}
			//点赞数-1
			post.setLikeCount(post.getLikeCount()-1);
			String likeIds = "";
			if(post.getLikeIds().contains(",")){
				StringBuffer sf = new StringBuffer();
				for(String str : post.getLikeIds().split(",")){
					if(!str.equals(customerID)){
						sf.append(str+",");
					}
				}
				likeIds = sf.substring(0, sf.lastIndexOf(","));
			}
			post.setLikeIds(likeIds);
			postDao.updatePostLike(post);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	//------------后台
	
	@RequestMapping("/post")
	public String post(Model model, Page page){
		p("post");
		if(page==null){
			page = new Page();
		}
		int count = postDao.selectCount(new Post(), page);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		return "post/post";
	}
	
	@RequestMapping("/postList")
	public String postList(Model model, Page page){
		p("postList");
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Post> postList = postDao.select_by_page_admin(new Post(), page);
		model.addAttribute("page", page);
		model.addAttribute("postList", postList);
		return "post/postList";
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(int[] ids){
		p("delete");
		try {
			for(int id:ids){
				postDao.delete_by_id(new Post(), id);
			}
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("/lookpost_admin")
	public String lookPost_admin(Model model, int postID){
		p("lookpost_admin");
		Post post = postDao.select_by_id(new Post(), postID);
		Page page = new Page();
		page.setPostID(postID);
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Comment> commentList = commentDao.select_by_page(new Comment(), page);
		model.addAttribute("commentList", commentList);
		model.addAttribute("post", post);
		model.addAttribute("page", page);
		return "post/postInfo";
	}
	
	@RequestMapping("/updateTop")
	public @ResponseBody String updateTop(Post post){
		p("updateTop");
		try {
			if(post.getOrderNum()!=0){
				post.setOrderNum(0);
			}else{
				int orderNum = postDao.selectOrderNum();
				post.setOrderNum(orderNum+1);
			}
			postDao.updateTop(post);
			return "yes";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/post/"+str);
	}
}
