package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxAdminLoginLogQueryCondition extends QueryCondition<LxAdminLoginLogQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 6807986218572200736L;

    /** 登录时间 */
    private static final String gmtLoginBegin    = "gmtLoginBegin";

    /** 登录时间结束 */
    private static final String gmtLoginEnd      = "gmtLoginEnd";

    /** 用户id */
    private static final String userId           = "userId";

    /** 登录ip */
    private static final String ipAdr            = "ipAdr";

    public LxAdminLoginLogQueryCondition putGmtLoginBegin(Date gmtLoginBegin) {
        addIfExist(LxAdminLoginLogQueryCondition.gmtLoginBegin, gmtLoginBegin);
        return this;
    }

    public LxAdminLoginLogQueryCondition putGmtLoginEnd(Date gmtLoginEnd) {
        addIfExist(LxAdminLoginLogQueryCondition.gmtLoginEnd, gmtLoginEnd);
        return this;
    }

    public LxAdminLoginLogQueryCondition putUserId(long userId) {
        addIfExist(LxAdminLoginLogQueryCondition.userId, userId);
        return this;
    }

    public LxAdminLoginLogQueryCondition putIpAdr(String ipAdr) {
        addIfExist(LxAdminLoginLogQueryCondition.ipAdr, ipAdr);
        return this;
    }
}