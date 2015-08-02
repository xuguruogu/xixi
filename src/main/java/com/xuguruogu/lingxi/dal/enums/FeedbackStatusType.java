package com.xuguruogu.lingxi.dal.enums;

public enum FeedbackStatusType {

    SUSPENDING("suspending", "待处理"),

    HANDLING("handling", "处理中"),

    SOLVED("solved", "已处理");

    /** 码值 */
    private final String code;

    /** 描述 */
    private final String desc;

    private FeedbackStatusType(String code, String desc) {
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