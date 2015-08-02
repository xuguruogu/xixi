package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * @author kent
 *
 */
public class LxFeedbackDO extends Entity {

    /**  */
    private static final long serialVersionUID = -3731600506700450644L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 处理时间 */
    private Date              gmtHandled;

    /** 用户id */
    private long              userId;

    /** 标题 */
    private String            title;

    /** 内容 */
    private String            content;

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
     * Getter method for property <tt>gmtHandled</tt>.
     * 
     * @return property value of gmtHandled
     */
    public Date getGmtHandled() {
        return gmtHandled;
    }

    /**
     * Setter method for property <tt>gmtHandled</tt>.
     * 
     * @param gmtHandled value to be assigned to property gmtHandled
     */
    public void setGmtHandled(Date gmtHandled) {
        this.gmtHandled = gmtHandled;
    }

    /**
     * Getter method for property <tt>userId</tt>.
     * 
     * @return property value of userId
     */
    public long getUserId() {
        return userId;
    }

    /**
     * Setter method for property <tt>userId</tt>.
     * 
     * @param userId value to be assigned to property userId
     */
    public void setUserId(long userId) {
        this.userId = userId;
    }

    /**
     * Getter method for property <tt>title</tt>.
     * 
     * @return property value of title
     */
    public String getTitle() {
        return title;
    }

    /**
     * Setter method for property <tt>title</tt>.
     * 
     * @param title value to be assigned to property title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Getter method for property <tt>content</tt>.
     * 
     * @return property value of content
     */
    public String getContent() {
        return content;
    }

    /**
     * Setter method for property <tt>content</tt>.
     * 
     * @param content value to be assigned to property content
     */
    public void setContent(String content) {
        this.content = content;
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
