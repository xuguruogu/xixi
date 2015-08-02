package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxUserRelationActionQueryCondition extends
                                               QueryCondition<LxUserRelationActionQueryCondition> {

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

    /** 动作 */
    private static final String userAction       = "userAction";

    /** 状态 */
    private static final String status           = "status";

    public LxUserRelationActionQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxUserRelationActionQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxUserRelationActionQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxUserRelationActionQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxUserRelationActionQueryCondition putUserId(long userId) {
        addIfExist(LxUserRelationActionQueryCondition.userId, userId);
        return this;
    }

    public LxUserRelationActionQueryCondition putFriendId(long friendId) {
        addIfExist(LxUserRelationActionQueryCondition.friendId, friendId);
        return this;
    }

    public LxUserRelationActionQueryCondition putUserAction(String userAction) {
        addIfExist(LxUserRelationActionQueryCondition.userAction, userAction);
        return this;
    }

    public LxUserRelationActionQueryCondition putStatus(String status) {
        addIfExist(LxUserRelationActionQueryCondition.status, status);
        return this;
    }
}
