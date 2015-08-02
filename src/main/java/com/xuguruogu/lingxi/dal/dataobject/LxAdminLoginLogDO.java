package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * Admin登录记录
 * @author kent
 * @version $Id: LxAdminLoginLogDO.java, v 0.1 Jul 19, 2015 2:30:58 PM kent Exp $
 */
public class LxAdminLoginLogDO extends Entity {

    /**  */
    private static final long serialVersionUID = 2500557805132606740L;

    /** 登录时间 */
    private Date              gmtLogin;

    /** 用户id */
    private long              userId;

    /** 登录ip */
    private String            ipAdr;

    /**
     * Getter method for property <tt>gmtLogin</tt>.
     * 
     * @return property value of gmtLogin
     */
    public Date getGmtLogin() {
        return gmtLogin;
    }

    /**
     * Setter method for property <tt>gmtLogin</tt>.
     * 
     * @param gmtLogin value to be assigned to property gmtLogin
     */
    public void setGmtLogin(Date gmtLogin) {
        this.gmtLogin = gmtLogin;
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
     * Getter method for property <tt>ipAdr</tt>.
     * 
     * @return property value of ipAdr
     */
    public String getIpAdr() {
        return ipAdr;
    }

    /**
     * Setter method for property <tt>ipAdr</tt>.
     * 
     * @param ipAdr value to be assigned to property ipAdr
     */
    public void setIpAdr(String ipAdr) {
        this.ipAdr = ipAdr;
    }

}
