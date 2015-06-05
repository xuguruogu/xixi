package com.askj.entity;

/**
 * 帖子回复
 * @author Xanxus
 *
 */
public class PostReplies {
	private int id;
	private int postID;		//对应帖子id
	private int commentID;	//对应评论id
	private Customer parentReplier;	//上级回复人
	private Customer replier;		//回复人
	private String content;			//回复内容
//	private String repliesTime;		//回复时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	public int getCommentID() {
		return commentID;
	}
	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}
	public Customer getParentReplier() {
		return parentReplier;
	}
	public void setParentReplier(Customer parentReplier) {
		this.parentReplier = parentReplier;
	}
	public Customer getReplier() {
		return replier;
	}
	public void setReplier(Customer replier) {
		this.replier = replier;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	/*public String getRepliesTime() {
		return repliesTime;
	}
	public void setRepliesTime(String repliesTime) {
		this.repliesTime = repliesTime;
	}*/
	public PostReplies() {
		super();
	}
	
	public PostReplies(int postID, Customer parentReplier, Customer replier,
			String content) {
		super();
		this.postID = postID;
		this.parentReplier = parentReplier;
		this.replier = replier;
		this.content = content;
	}
	public PostReplies(Customer parentReplier, int commentID, Customer replier,
			String content) {
		super();
		this.commentID = commentID;
		this.parentReplier = parentReplier;
		this.replier = replier;
		this.content = content;
	}
	
}
