package com.xuguruogu.lingxi.dal.querycondition;

public class LxPostPraiseQueryCondition extends QueryCondition<LxPostPraiseQueryCondition> {

    /**  */
    private static final long   serialVersionUID = -8271131281299532081L;

    /** 用户Id */
    private static final String userId           = "userId";

    /** 帖子Id */
    private static final String postId           = "postId";

    public LxPostPraiseQueryCondition putUserId(long userId) {
        addIfExist(LxPostPraiseQueryCondition.userId, userId);
        return this;
    }

    public LxPostPraiseQueryCondition putPostId(long postId) {
        addIfExist(LxPostPraiseQueryCondition.postId, postId);
        return this;
    }
}