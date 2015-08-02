package com.xuguruogu.lingxi.form;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuguruogu.lingxi.dao.CommentDao;
import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.dao.PostRepliesDao;
import com.xuguruogu.lingxi.entity.Comment;
import com.xuguruogu.lingxi.entity.Customer;
import com.xuguruogu.lingxi.entity.MM;
import com.xuguruogu.lingxi.entity.PostReplies;
import com.xuguruogu.lingxi.util.DateUtil;
import com.xuguruogu.lingxi.util.MsgType;

@Controller
@RequestMapping("/form/postReplies")
public class PostRepliesForm {
	@Autowired
	private PostRepliesDao postRepliesDao;
	
	@Autowired
	public MMDao mmDao;
	
	@Autowired
	public CommentDao commentDao;
	
	/**
	 * 回复顶端的帖子
	 * @param req
	 * @return
	 */
	@RequestMapping("/repliespost")
	public @ResponseBody String repliesPost(HttpServletRequest req){
		p("repliespost");
		try {
			int postID = Integer.parseInt(req.getParameter("postID"));
			String content = req.getParameter("content");
			int parentReplierID = Integer.parseInt(req.getParameter("parentReplierID"));
			int replierID = Integer.parseInt(req.getParameter("replierID"));
			Customer parentReplier = new Customer(parentReplierID);
			Customer replier = new Customer(replierID);
			PostReplies postReplies = new PostReplies(postID, parentReplier, replier, content);
			postRepliesDao.insert(postReplies);
			//判断是否是评论自己
			if(parentReplierID==replierID){
				return "{\"checked\":\"0\"}";
			}
			//回复后发送消息给发帖人
			Customer receiver = new Customer(parentReplierID);
			Customer sender = new Customer(replierID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 0;
			String msgContent = MsgType.repliesPost;
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
	 * 在帖子的评论中回复
	 * @param req
	 * @return
	 */
	@RequestMapping("/repliescomment")
	public @ResponseBody String repliesComment(HttpServletRequest req){
		p("repliespost");
		try {
			int commentID = Integer.parseInt(req.getParameter("commentID"));
			String content = req.getParameter("content");
			int parentReplierID = Integer.parseInt(req.getParameter("parentReplierID"));
			int replierID = Integer.parseInt(req.getParameter("replierID"));
			Customer parentReplier = new Customer(parentReplierID);
			Customer replier = new Customer(replierID);
			PostReplies postReplies = new PostReplies(parentReplier, commentID, replier, content);
			postRepliesDao.insert(postReplies);
			//判断是否是评论自己
			if(parentReplierID==replierID){
				return "{\"checked\":\"0\"}";
			}
			//回复后发送消息给发帖人
			Customer receiver = new Customer(parentReplierID);
			Customer sender = new Customer(replierID);
			String sendTime = DateUtil.now("yyyy-MM-dd HH:mm");
			int isRead = 0;
			int type = 0;
			String msgContent = MsgType.repliesComment;
			MM mm = new MM(receiver, sender, msgContent, sendTime, isRead, type);
			Comment comment = commentDao.select_by_id(new Comment(), commentID);
			mm.setPostID(comment.getPostID());
			mmDao.insert(mm);
			return "{\"checked\":\"0\"}";
		} catch (Exception e) {
			e.printStackTrace();
			return "{\"checked\":\"1\"}";
		}
	}

	private static void p(String str){
		System.out.println("[controller]/post/"+str);
	}
}
