package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxUserLoginLogQueryCondition extends QueryCondition<LxUserLoginLogQueryCondition> {

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

    public LxUserLoginLogQueryCondition putGmtLoginBegin(Date gmtLoginBegin) {
        addIfExist(LxUserLoginLogQueryCondition.gmtLoginBegin, gmtLoginBegin);
        return this;
    }

    public LxUserLoginLogQueryCondition putGmtLoginEnd(Date gmtLoginEnd) {
        addIfExist(LxUserLoginLogQueryCondition.gmtLoginEnd, gmtLoginEnd);
        return this;
    }

    public LxUserLoginLogQueryCondition putUserId(long userId) {
        addIfExist(LxUserLoginLogQueryCondition.userId, userId);
        return this;
    }

    public LxUserLoginLogQueryCondition putIpAdr(String ipAdr) {
        addIfExist(LxUserLoginLogQueryCondition.ipAdr, ipAdr);
        return this;
    }
}