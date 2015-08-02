package com.xuguruogu.lingxi.entity;

/**
 * 意见反馈
 * @author Administrator
 *
 */
public class Feedback {
	private int id;
	private Customer customer;		//反馈人
	private String content;			//反馈内容
	private String date;			//反馈时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Feedback() {
		super();
	}
	public Feedback(Customer customer, String content, String date) {
		super();
		this.customer = customer;
		this.content = content;
		this.date = date;
	}
}
