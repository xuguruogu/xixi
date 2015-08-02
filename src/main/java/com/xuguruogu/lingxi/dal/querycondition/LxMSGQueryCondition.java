package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxMSGQueryCondition extends QueryCondition<LxMSGQueryCondition> {

    /**  */
    private static final long   serialVersionUID = -4289169296425472430L;

    /** 创建时间开始 */
    private static final String gmtCreatedBegin  = "gmtCreatedBegin";

    /** 创建时间开始 */
    private static final String gmtCreatedEnd    = "gmtCreatedEnd";

    /** 用户id */
    private static final String userId           = "userId";

    /** 朋友id */
    private static final String friendId         = "friendId";

    /** 状态 */
    private static final String status           = "status";

    public LxMSGQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxMSGQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxMSGQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxMSGQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxMSGQueryCondition putUserId(long userId) {
        addIfExist(LxMSGQueryCondition.userId, userId);
        return this;
    }

    public LxMSGQueryCondition putFriendId(long friendId) {
        addIfExist(LxMSGQueryCondition.friendId, friendId);
        return this;
    }

    public LxMSGQueryCondition putStatus(String status) {
        addIfExist(LxMSGQueryCondition.status, status);
        return this;
    }
}
