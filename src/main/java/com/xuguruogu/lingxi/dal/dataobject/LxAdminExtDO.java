package com.xuguruogu.lingxi.dal.dataobject;

/**
 * @author kent
 *
 */
public class LxAdminExtDO extends Entity {

    /**  */
    private static final long serialVersionUID = 8459095579107439338L;

    /** 用户id */
    private Long              userId;

    /** key */
    private String            key;

    /** value */
    private String            value;

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
     * Getter method for property <tt>key</tt>.
     * 
     * @return property value of key
     */
    public String getKey() {
        return key;
    }

    /**
     * Setter method for property <tt>key</tt>.
     * 
     * @param key value to be assigned to property key
     */
    public void setKey(String key) {
        this.key = key;
    }

    /**
     * Getter method for property <tt>value</tt>.
     * 
     * @return property value of value
     */
    public String getValue() {
        return value;
    }

    /**
     * Setter method for property <tt>value</tt>.
     * 
     * @param value value to be assigned to property value
     */
    public void setValue(String value) {
        this.value = value;
    }

}
