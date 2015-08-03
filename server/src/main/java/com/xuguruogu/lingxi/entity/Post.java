package com.xuguruogu.lingxi.entity;

import java.util.List;

/**
 * 鹊桥帖子
 * @author Xanxus
 *
 */
public class Post {
	private int id;
	private String title;			//帖子标题
	private String content;			//帖子内容
	private Customer publisher;		//发布人
	private String publishTime;		//发布时间
	private int likeCount;			//点赞次数
//	private List<Comment> comments;	//跟帖列表
	private List<PostReplies> replies;	//帖子评论
	private String likeIds;			//存储点过赞的用户id
	private String lastUpTime;		//帖子最后变动时间（发布和有跟帖会更新时间，帖子根据这个时间进行排序）
	private int commentCount;		//跟帖数量
	private int orderNum;			//置顶排序
	
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public String getLastUpTime() {
		return lastUpTime;
	}
	public void setLastUpTime(String lastUpTime) {
		this.lastUpTime = lastUpTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Customer getPublisher() {
		return publisher;
	}
	public void setPublisher(Customer publisher) {
		this.publisher = publisher;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	/*public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}*/
	
	public String getLikeIds() {
		return likeIds;
	}
	public List<PostReplies> getReplies() {
		return replies;
	}
	public void setReplies(List<PostReplies> replies) {
		this.replies = replies;
	}
	public void setLikeIds(String likeIds) {
		this.likeIds = likeIds;
	}
	public Post() {
		super();
		this.title = "";
		this.content = "";
		this.likeIds = "";
	}
	public Post(String title, String content, Customer publisher,
			String publishTime, String lastUpTime) {
		super();
		this.title = title;
		this.content = content;
		this.publisher = publisher;
		this.publishTime = publishTime;
		this.lastUpTime = lastUpTime;
	}
	
}
