package com.xuguruogu.lingxi.dal.enums;

public enum UserRelationActionStatusType {

    SUSPENDING("suspending", "待处理"),

    IGNORED("ignored", "已忽略"),

    ACCEPTED("accepted", "已接受"),

    REJECTED("rejected", "已拒绝");

    /** 码值 */
    private final String code;

    /** 描述 */
    private final String desc;

    private UserRelationActionStatusType(String code, String desc) {
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