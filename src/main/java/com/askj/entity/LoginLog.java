package com.askj.entity;
/**
 * 登录记录
 * @author Administrator
 *
 */
public class LoginLog {
	private int id;
	private Customer customer;		//登录人
	private String loginTime;		//登录时间
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
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	public LoginLog() {
		super();
	}
	public LoginLog(Customer customer, String loginTime) {
		super();
		this.customer = customer;
		this.loginTime = loginTime;
	}
	
}
