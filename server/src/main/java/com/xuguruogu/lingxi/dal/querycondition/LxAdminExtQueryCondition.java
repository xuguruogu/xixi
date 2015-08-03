package com.xuguruogu.lingxi.dal.querycondition;

public class LxAdminExtQueryCondition extends QueryCondition<LxAdminExtQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 2164395703661536854L;

    /** 用户id */
    private static final String userId           = "userId";

    /** key */
    private static final String key              = "key";

    public LxAdminExtQueryCondition putUserId(long userId) {
        addIfExist(LxAdminExtQueryCondition.userId, userId);
        return this;
    }

    public LxAdminExtQueryCondition putKey(String key) {
        addIfExist(LxAdminExtQueryCondition.key, key);
        return this;
    }
}
