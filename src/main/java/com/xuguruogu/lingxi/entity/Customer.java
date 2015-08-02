package com.xuguruogu.lingxi.entity;

/**
 * app用户
 * @author Xanxus
 *
 */
public class Customer {
	private int id;
	private String headPic;			//头像图片路径
	private String nickname;		//昵称
	private String school;			//学校
	private String email;			//email
	private String password;		//密码
	private String sex;				//性别
	private int age;				//年龄
	private String label;			//标签
	private String registTime;		//注册时间
	private int status;				//账号状态（0代表正常，1代表停用）
	
	
	public String getRegistTime() {
		return registTime;
	}
	public void setRegistTime(String registTime) {
		this.registTime = registTime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHeadPic() {
		return headPic;
	}
	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Customer() {
		super();
		headPic = "";
		sex = "";
		label = "";
		school = "";
	}
	public Customer(int id) {
		super();
		this.id = id;
	}
}
