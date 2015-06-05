package com.askj.entity;

/**
 * 关于我们
 * @author Administrator
 *
 */
public class AboutUs {
	private int id;
	private String content;
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
	public AboutUs() {
		super();
		content = "";
	}
	
}
