package com.xuguruogu.lingxi.entity;

/**
 * 角色 - 功能模块（多对多）
 * @author Xanxus
 *
 */
public class Role {
	private int id;			
	private String roleName;		//角色名称
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Role() {
		super();
	}
	public Role(String roleName) {
		super();
		this.roleName = roleName;
	}
	
}
