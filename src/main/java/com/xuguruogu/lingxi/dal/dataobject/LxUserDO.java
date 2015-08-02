package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * @author kent
 *
 */
public class LxUserDO extends Entity {

    /**  */
    private static final long serialVersionUID = -1277954289446625774L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 最后登录时间 */
    private Date              gmtLastLogin;

    /** 用户名 */
    private String            username;

    /** 密码 */
    private String            password;

    /** 昵称 */
    private String            nickname;

    /** 姓名 */
    private String            realname;

    /** 邮箱 */
    private String            email;

    /** 电话 */
    private String            tel;

    /** 性别 */
    private String            sex;

    /** 生日 */
    private Date              birthday;

    /** 签名 */
    private String            description;

    /** 头像路径 */
    private String            portrait;

    /** 状态 */
    private String            status;

    /** 管理者 */
    private String            manager;

    /** 管理时间 */
    private Date              gmtManaged;

    /**
     * Getter method for property <tt>gmtCreated</tt>.
     * 
     * @return property value of gmtCreated
     */
    public Date getGmtCreated() {
        return gmtCreated;
    }

    /**
     * Setter method for property <tt>gmtCreated</tt>.
     * 
     * @param gmtCreated value to be assigned to property gmtCreated
     */
    public void setGmtCreated(Date gmtCreated) {
        this.gmtCreated = gmtCreated;
    }

    /**
     * Getter method for property <tt>gmtLastLogin</tt>.
     * 
     * @return property value of gmtLastLogin
     */
    public Date getGmtLastLogin() {
        return gmtLastLogin;
    }

    /**
     * Setter method for property <tt>gmtLastLogin</tt>.
     * 
     * @param gmtLastLogin value to be assigned to property gmtLastLogin
     */
    public void setGmtLastLogin(Date gmtLastLogin) {
        this.gmtLastLogin = gmtLastLogin;
    }

    /**
     * Getter method for property <tt>username</tt>.
     * 
     * @return property value of username
     */
    public String getUsername() {
        return username;
    }

    /**
     * Setter method for property <tt>username</tt>.
     * 
     * @param username value to be assigned to property username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * Getter method for property <tt>password</tt>.
     * 
     * @return property value of password
     */
    public String getPassword() {
        return password;
    }

    /**
     * Setter method for property <tt>password</tt>.
     * 
     * @param password value to be assigned to property password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Getter method for property <tt>nickname</tt>.
     * 
     * @return property value of nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * Setter method for property <tt>nickname</tt>.
     * 
     * @param nickname value to be assigned to property nickname
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * Getter method for property <tt>realname</tt>.
     * 
     * @return property value of realname
     */
    public String getRealname() {
        return realname;
    }

    /**
     * Setter method for property <tt>realname</tt>.
     * 
     * @param realname value to be assigned to property realname
     */
    public void setRealname(String realname) {
        this.realname = realname;
    }

    /**
     * Getter method for property <tt>email</tt>.
     * 
     * @return property value of email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Setter method for property <tt>email</tt>.
     * 
     * @param email value to be assigned to property email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Getter method for property <tt>tel</tt>.
     * 
     * @return property value of tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * Setter method for property <tt>tel</tt>.
     * 
     * @param tel value to be assigned to property tel
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * Getter method for property <tt>sex</tt>.
     * 
     * @return property value of sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * Setter method for property <tt>sex</tt>.
     * 
     * @param sex value to be assigned to property sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * Getter method for property <tt>birthday</tt>.
     * 
     * @return property value of birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * Setter method for property <tt>birthday</tt>.
     * 
     * @param birthday value to be assigned to property birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * Getter method for property <tt>description</tt>.
     * 
     * @return property value of description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Setter method for property <tt>description</tt>.
     * 
     * @param description value to be assigned to property description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Getter method for property <tt>portrait</tt>.
     * 
     * @return property value of portrait
     */
    public String getPortrait() {
        return portrait;
    }

    /**
     * Setter method for property <tt>portrait</tt>.
     * 
     * @param portrait value to be assigned to property portrait
     */
    public void setPortrait(String portrait) {
        this.portrait = portrait;
    }

    /**
     * Getter method for property <tt>status</tt>.
     * 
     * @return property value of status
     */
    public String getStatus() {
        return status;
    }

    /**
     * Setter method for property <tt>status</tt>.
     * 
     * @param status value to be assigned to property status
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * Getter method for property <tt>manager</tt>.
     * 
     * @return property value of manager
     */
    public String getManager() {
        return manager;
    }

    /**
     * Setter method for property <tt>manager</tt>.
     * 
     * @param manager value to be assigned to property manager
     */
    public void setManager(String manager) {
        this.manager = manager;
    }

    /**
     * Getter method for property <tt>gmtManaged</tt>.
     * 
     * @return property value of gmtManaged
     */
    public Date getGmtManaged() {
        return gmtManaged;
    }

    /**
     * Setter method for property <tt>gmtManaged</tt>.
     * 
     * @param gmtManaged value to be assigned to property gmtManaged
     */
    public void setGmtManaged(Date gmtManaged) {
        this.gmtManaged = gmtManaged;
    }

}
