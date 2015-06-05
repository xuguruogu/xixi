package com.askj.entity;

/**
 * 功能模块
 * @author Xanxus
 *
 */
public class Menu {
	private int id;				
	private String menuName;				//名称
	private String url;						//url地址
	private int parentID;					//父类功能模块	0-顶层功能
	private int orderNum;						//功能排序
	private String remarks;					//备注
	
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getParentID() {
		return parentID;
	}
	public void setParentID(int parentID) {
		this.parentID = parentID;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public Menu() {
		super();
	}
	public Menu(int id) {
		super();
		this.id = id;
	}
}
