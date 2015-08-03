package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * 帖子点赞
 * @author kent
 *
 */
public class LxPostReplyDO extends DataObjectBase {

    /**  */
    private static final long serialVersionUID = -1612226086721887050L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 发布人id */
    private Long              userId;

    /** 对应帖子id */
    private long              postId;

    /** 对应评论id */
    private long              postReplyId;

    /** 回复内容 */
    private String            content;

    /**
     * Getter method for property <tt>gmtCreated</tt>.
     * 
     * @return property value of gmtCreated
     */
    @Override
    public Date getGmtCreated() {
        return gmtCreated;
    }

    /**
     * Setter method for property <tt>gmtCreated</tt>.
     * 
     * @param gmtCreated value to be assigned to property gmtCreated
     */
    @Override
    public void setGmtCreated(Date gmtCreated) {
        this.gmtCreated = gmtCreated;
    }

    /**
     * Getter method for property <tt>userId</tt>.
     * 
     * @return property value of userId
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * Setter method for property <tt>userId</tt>.
     * 
     * @param userId value to be assigned to property userId
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * Getter method for property <tt>postID</tt>.
     * 
     * @return property value of postID
     */
    public long getPostId() {
        return postId;
    }

    /**
     * Setter method for property <tt>postID</tt>.
     * 
     * @param postID value to be assigned to property postID
     */
    public void setPostId(long postId) {
        this.postId = postId;
    }

    /**
     * Getter method for property <tt>postReplyId</tt>.
     * 
     * @return property value of postReplyId
     */
    public long getPostReplyId() {
        return postReplyId;
    }

    /**
     * Setter method for property <tt>postReplyId</tt>.
     * 
     * @param postReplyId value to be assigned to property postReplyId
     */
    public void setPostReplyId(long postReplyId) {
        this.postReplyId = postReplyId;
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

}
