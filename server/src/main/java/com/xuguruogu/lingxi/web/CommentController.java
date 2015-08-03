package com.xuguruogu.lingxi.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuguruogu.lingxi.dao.CommentDao;
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
@RequestMapping("/comment")
public class CommentController {
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private PostDao postDao;
	
	@Autowired
	private MMDao mmDao;
	
	/**
	 * 查询跟帖
	 * @param page	包含postID属性
	 * @return
	 */
	@RequestMapping(value="/commentlist",produces="text/html;charset=UTF-8")
	public @ResponseBody String commentlist(Page page){
		p("commentlist");
		if(page==null){
			page = new Page();
		}
		page.setStartIndex(page.getPageIndex()*page.getPageSize());
		List<Comment> list = commentDao.select_by_page(new Comment(), page);
		String res = "{\"list\":"+JSON.toJSONString(list)+"}";
		return res;
	}
	
	/**
	 * 跟帖
	 * @param req
	 * @return
	 */
	@RequestMapping("/follow")
	public @ResponseBody String follow(HttpServletRequest req){
		p("follow");
			try {
			int postID = Integer.parseInt(req.getParameter("postID"));
			String content = req.getParameter("content");
			int commenterID = Integer.parseInt(req.getParameter("commenterID"));
			Customer commenter = new Customer(commenterID);
			String publishTime = DateUtil.now("yyyy-MM-dd HH:mm:ss");
			Post post = postDao.select_by_id(new Post(), postID);
			int floor = post.getCommentCount() + 1;
			Comment comment = new Comment(postID, floor, publishTime, content, commenter);
			System.out.println("跟帖："+JSON.toJSONString(comment));
			commentDao.insert(comment);
			post.setLastUpTime(publishTime);
			post.setCommentCount(post.getCommentCount()+1);
			postDao.updateLastUpTime(post);
			//判断是否是跟了自己的帖子
			if(commenterID==post.getPublisher().getId()){
				return "{\"checked\":\"0\"}";
			}
			//跟帖后发送消息给发帖人
			Customer receiver = post.getPublisher();
			Customer sender = commenter;
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 0;
			String msgContent = MsgType.commentPost;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setPostID(postID);
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}
	
	/**
	 * 对跟帖点赞
	 * @param req
	 * @return
	 */
	@RequestMapping("/likecomment")
	public synchronized @ResponseBody String likeComment(HttpServletRequest req){
		p("likecomment");
		try {
			int commentID = Integer.parseInt(req.getParameter("commentID"));
			int customerID = Integer.parseInt(req.getParameter("customerID"));
			Comment comment = commentDao.select_by_id(new Comment(), commentID);
			comment.setLikeIds(comment.getLikeIds()==null?"":comment.getLikeIds());
			//判断是否已点过赞
			if(comment.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>>>已点过赞");
				return "{\"checked\":\"1\"}";
			}
			//点赞数+1
			comment.setLikeCount(comment.getLikeCount()+1);
			//如果没人点过赞
			if(comment.getLikeIds()==null||comment.getLikeIds().equals("")){
				comment.setLikeIds(customerID+"");
			}else{
				comment.setLikeIds(comment.getLikeIds()+","+customerID);
			}
			commentDao.updateCommentLike(comment);
			
			//判断是否是对自己的跟帖点赞
			if(customerID==comment.getCommenter().getId()){
				return "{\"checked\":\"0\"}";
			}
			//点赞后发送消息给发帖人
			Customer receiver = comment.getCommenter();
			Customer sender = new Customer(customerID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 0;
			String msgContent = MsgType.likeComment;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			mm.setPostID(comment.getPostID());
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	/**
	 * 对跟帖取消点赞
	 * @param req
	 * @return
	 */
	@RequestMapping("/dislikecomment")
	public synchronized @ResponseBody String disLikeComment(HttpServletRequest req){
		p("dislikecomment");
		try {
			int commentID = Integer.parseInt(req.getParameter("commentID"));
			String customerID = req.getParameter("customerID");
			Comment comment = commentDao.select_by_id(new Comment(), commentID);
			if(comment==null){
				throw new Exception();
			}
			comment.setLikeIds(comment.getLikeIds()==null?"":comment.getLikeIds());
			//判断是否已取消
			if(!comment.getLikeIds().contains(customerID+"")){
				System.out.println(">>>>>已取消");
				return "{\"checked\":\"1\"}";
			}
//			System.out.println(JSON.toJSON(comment));
			//点赞数-1
			comment.setLikeCount(comment.getLikeCount()-1);
			String likeIds = "";
			if(comment.getLikeIds().contains(",")){
				StringBuffer sf = new StringBuffer();
				for(String str : comment.getLikeIds().split(",")){
					if(!str.equals(customerID)){
						sf.append(str+",");
					}
				}
				likeIds = sf.substring(0, sf.lastIndexOf(","));
			}
			comment.setLikeIds(likeIds);
//			System.out.println(JSON.toJSON(comment));
			commentDao.updateCommentLike(comment);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"2\"}";
		}
	}
	
	private static void p(String str){
		System.out.println("[controller]/comment/"+str);
	}
}
