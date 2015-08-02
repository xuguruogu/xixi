package com.xuguruogu.lingxi.entity;

public class Root {
	private int id;
	private int roleID;
	private Menu menu;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public Menu getMenu() {
		return menu;
	}
	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	public Root() {
		super();
	}
	public Root(int roleID, Menu menu) {
		super();
		this.roleID = roleID;
		this.menu = menu;
	}
}
