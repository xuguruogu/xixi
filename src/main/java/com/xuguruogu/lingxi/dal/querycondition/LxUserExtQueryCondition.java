package com.xuguruogu.lingxi.dal.querycondition;

public class LxUserExtQueryCondition extends QueryCondition<LxUserExtQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 2164395703661536854L;

    /** 用户id */
    private static final String userId           = "userId";

    /** key */
    private static final String key              = "key";

    public LxUserExtQueryCondition putUserId(long userId) {
        addIfExist(LxUserExtQueryCondition.userId, userId);
        return this;
    }

    public LxUserExtQueryCondition putKey(String key) {
        addIfExist(LxUserExtQueryCondition.key, key);
        return this;
    }
}
