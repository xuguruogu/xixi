package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * 帖子回复
 * @author kent
 *
 */
public class LxPostPraiseDO extends DataObjectBase {

    /**  */
    private static final long serialVersionUID = -1612226086721887050L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 点赞人id */
    private Long              userId;

    /** 对应帖子id */
    private long              postId;

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

}
