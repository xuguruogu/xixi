package com.xuguruogu.lingxi.dal.enums;

public enum UserStatusType {

    ACTIVE("active", "正常"),

    FORBIDDEN("forbidden", "禁用");

    /** 码值 */
    private final String code;

    /** 描述 */
    private final String desc;

    private UserStatusType(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    /**
     * Getter method for property <tt>code</tt>.
     * 
     * @return property value of code
     */
    public String getCode() {
        return code;
    }

    /**
     * Getter method for property <tt>desc</tt>.
     * 
     * @return property value of desc
     */
    public String getDesc() {
        return desc;
    }

}