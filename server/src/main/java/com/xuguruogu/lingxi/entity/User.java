package com.xuguruogu.lingxi.entity;

/**
 * 管理员
 * @author Xanxus
 *
 */
public class User {
	private int id;
	private String username;		//用户名
	private String password;		//密码
	private String realname;		//姓名
	private String email;			//邮箱
	private String tel;				//联系电话
	private int roleID;				//角色
	private boolean SA;				//是否是超级管理员	0-一般管理员	1-超级管理员
	private int status;				//状态	0-启用	1-停用
	
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public boolean isSA() {
		return SA;
	}
	public void setSA(boolean sA) {
		SA = sA;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "User [SA=" + SA + ", email=" + email + ", id=" + id
				+ ", password=" + password + ", realname=" + realname
				+ ", roleID=" + roleID + ", status=" + status + ", tel=" + tel
				+ ", username=" + username + "]";
	}
	
}
