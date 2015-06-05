package com.askj.entity;

/**
 * system message
 * 系统消息
 * @author Administrator
 *
 */
public class SM {
	private int id;
	private String content;				//消息内容
	private String publishTime;			//消息发布时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	
	
}
