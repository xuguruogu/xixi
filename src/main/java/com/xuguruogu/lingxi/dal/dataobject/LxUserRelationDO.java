package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * @author kent
 *
 */
public class LxUserRelationDO extends Entity {

    /**  */
    private static final long serialVersionUID = -2580129251406218993L;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 用户 */
    private long              userId;

    /** 朋友 */
    private long              friendId;

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
     * Getter method for property <tt>friendId</tt>.
     * 
     * @return property value of friendId
     */
    public long getFriendId() {
        return friendId;
    }

    /**
     * Setter method for property <tt>friendId</tt>.
     * 
     * @param friendId value to be assigned to property friendId
     */
    public void setFriendId(long friendId) {
        this.friendId = friendId;
    }

}
