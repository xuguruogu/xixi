package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * 鹊桥帖子
 * @author kent
 *
 */
public class LxPostDO extends Entity {
    /**  */
    private static final long serialVersionUID = 5382350488197182568L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 发布人id */
    private Long              userId;

    /** 帖子标题 */
    private String            title;

    /** 帖子内容 */
    private String            content;

    /** 图片链接 */
    private String            pictures;

    /** 点赞数量 */
    private int               praiseCount;

    /** 跟帖数量 */
    private int               replyCount;

    /** 状态 */
    private String            status;

    /** 管理者 */
    private String            manager;

    /** 管理时间 */
    private Date              gmtManaged;

    /**
     * Getter method for property <tt>user_id</tt>.
     * 
     * @return property value of user_id
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * Setter method for property <tt>user_id</tt>.
     * 
     * @param user_id value to be assigned to property user_id
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

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
     * Getter method for property <tt>pictures</tt>.
     * 
     * @return property value of pictures
     */
    public String getPictures() {
        return pictures;
    }

    /**
     * Setter method for property <tt>pictures</tt>.
     * 
     * @param pictures value to be assigned to property pictures
     */
    public void setPictures(String pictures) {
        this.pictures = pictures;
    }

    /**
     * Getter method for property <tt>praiseCount</tt>.
     * 
     * @return property value of praiseCount
     */
    public int getPraiseCount() {
        return praiseCount;
    }

    /**
     * Setter method for property <tt>praiseCount</tt>.
     * 
     * @param praiseCount value to be assigned to property praiseCount
     */
    public void setPraiseCount(int praiseCount) {
        this.praiseCount = praiseCount;
    }

    /**
     * Getter method for property <tt>replyCount</tt>.
     * 
     * @return property value of replyCount
     */
    public int getReplyCount() {
        return replyCount;
    }

    /**
     * Setter method for property <tt>replyCount</tt>.
     * 
     * @param replyCount value to be assigned to property replyCount
     */
    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
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
