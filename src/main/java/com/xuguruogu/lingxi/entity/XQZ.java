package com.xuguruogu.lingxi.entity;

import java.util.List;


/**
 * 小圈子
 * @author Xanxus
 *
 */
public class XQZ {
	private int id;
	private Customer publisher;	//发布人
	private String publishTime;		//发布时间
	private String content;		//发布内容
	private int likeCount;		//点赞次数
	private int dislikeCount;	//丢狗屎次数
	private String likeIds;	//点赞过的用户的id
	private String dislikeIds;	//丢狗屎过的用户的id
	private int repliesCount;	//回复数
	private List<XQZReplies> replies;	//回复列表
	
	public int getId() {
		return id;
	}
	public int getRepliesCount() {
		return repliesCount;
	}
	public void setRepliesCount(int repliesCount) {
		this.repliesCount = repliesCount;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public int getDislikeCount() {
		return dislikeCount;
	}
	public void setDislikeCount(int dislikeCount) {
		this.dislikeCount = dislikeCount;
	}
	public String getLikeIds() {
		return likeIds;
	}
	public void setLikeIds(String likeIds) {
		this.likeIds = likeIds;
	}
	public String getDislikeIds() {
		return dislikeIds;
	}
	public void setDislikeIds(String dislikeIds) {
		this.dislikeIds = dislikeIds;
	}
	
	public List<XQZReplies> getReplies() {
		return replies;
	}
	public void setReplies(List<XQZReplies> replies) {
		this.replies = replies;
	}
	public XQZ() {
		super();
		this.likeIds = "";
		this.dislikeIds = "";
	}
	public XQZ(Customer publisher, String publishTime, String content) {
		super();
		this.publisher = publisher;
		this.publishTime = publishTime;
		this.content = content;
	}
}
