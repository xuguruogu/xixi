package com.xuguruogu.lingxi.dal.dataobject;

import java.util.Date;

/**
 * DO 基础类，提供DO创建人，修改人，创建时间，修改时间
 * 
 * @author zhipeng.zouzhp
 */
public abstract class DataObjectBase extends Entity {

    /**  */
    private static final long serialVersionUID = 1L;

    /** 创建人 */
    private String            creator;

    /** 创建时间 */
    private Date              gmtCreated;

    /** 修改人 */
    private String            modifier;

    /** 修改时间 */
    private Date              gmtModified;

    /**
     * Getter method for property <tt>creator</tt>.
     * 
     * @return property value of creator
     */
    public String getCreator() {
        return creator;
    }

    /**
     * Setter method for property <tt>creator</tt>.
     * 
     * @param creator value to be assigned to property creator
     */
    public void setCreator(String creator) {
        this.creator = creator;
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
     * Getter method for property <tt>modifier</tt>.
     * 
     * @return property value of modifier
     */
    public String getModifier() {
        return modifier;
    }

    /**
     * Setter method for property <tt>modifier</tt>.
     * 
     * @param modifier value to be assigned to property modifier
     */
    public void setModifier(String modifier) {
        this.modifier = modifier;
    }

    /**
     * Getter method for property <tt>gmtModified</tt>.
     * 
     * @return property value of gmtModified
     */
    public Date getGmtModified() {
        return gmtModified;
    }

    /**
     * Setter method for property <tt>gmtModified</tt>.
     * 
     * @param gmtModified value to be assigned to property gmtModified
     */
    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

}
