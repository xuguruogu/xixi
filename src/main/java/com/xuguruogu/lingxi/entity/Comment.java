package com.xuguruogu.lingxi.entity;

import java.util.List;

/**
 * 帖子跟帖
 * @author Xanxus
 *
 */
public class Comment {
	private int id;
	private int postID;						//父类帖子id
	private int floor;						//回复楼层
	private int likeCount;					//点赞次数
	private String publishTime; 			//发布时间
	private String content;					//发布内容
	private Customer commenter;				//发布人
	private List<PostReplies> replies;		//回复列表
	private String likeIds;					//存储点赞用户的id
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
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public String getLikeIds() {
		return likeIds;
	}
	public void setLikeIds(String likeIds) {
		this.likeIds = likeIds;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public Customer getCommenter() {
		return commenter;
	}
	public void setCommenter(Customer commenter) {
		this.commenter = commenter;
	}
	public List<PostReplies> getReplies() {
		return replies;
	}
	public void setReplies(List<PostReplies> replies) {
		this.replies = replies;
	}
	public Comment() {
		super();
		this.likeIds = "";
		this.content = "";
	}
	public Comment(int postID, int floor, String publishTime, String content,
			Customer commenter) {
		super();
		this.postID = postID;
		this.floor = floor;
		this.publishTime = publishTime;
		this.content = content;
		this.commenter = commenter;
	}
	
}
