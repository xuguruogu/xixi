package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxUserRelationQueryCondition extends QueryCondition<LxUserRelationQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 3588753154531969805L;

    /** 创建时间开始 */
    private static final String gmtCreatedBegin  = "gmtCreatedBegin";

    /** 创建时间开始 */
    private static final String gmtCreatedEnd    = "gmtCreatedEnd";

    /** 用户id */
    private static final String userId           = "userId";

    /** 朋友id */
    private static final String friendId         = "friendId";

    public LxUserRelationQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxUserRelationQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxUserRelationQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxUserRelationQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxUserRelationQueryCondition putUserId(long userId) {
        addIfExist(LxUserRelationQueryCondition.userId, userId);
        return this;
    }

    public LxUserRelationQueryCondition putFriendId(long friendId) {
        addIfExist(LxUserRelationQueryCondition.friendId, friendId);
        return this;
    }

}
