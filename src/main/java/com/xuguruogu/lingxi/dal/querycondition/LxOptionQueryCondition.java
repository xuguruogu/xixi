package com.xuguruogu.lingxi.dal.querycondition;

public class LxOptionQueryCondition extends QueryCondition<LxOptionQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 2164395703661536854L;

    /** key */
    private static final String key              = "key";

    public LxOptionQueryCondition putKey(String key) {
        addIfExist(LxOptionQueryCondition.key, key);
        return this;
    }
}
