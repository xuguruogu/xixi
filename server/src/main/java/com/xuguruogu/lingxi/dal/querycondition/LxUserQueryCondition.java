package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxUserQueryCondition extends QueryCondition<LxUserQueryCondition> {

    /**  */
    private static final long   serialVersionUID  = -3550402483096139774L;

    /** 创建时间开始 */
    private static final String gmtCreatedBegin   = "gmtCreatedBegin";

    /** 创建时间开始 */
    private static final String gmtCreatedEnd     = "gmtCreatedEnd";

    /** 最后登录时间 */
    private static final String gmtLastLoginBegin = "gmtLastLoginBegin";

    /** 最后登录时间 */
    private static final String gmtLastLoginEnd   = "gmtLastLoginEnd";

    /** 用户名 */
    private static final String username          = "username";

    /** 昵称 */
    private static final String nickname          = "nickname";

    /** 姓名 */
    private static final String realname          = "realname";

    /** email */
    private static final String email             = "email";

    /** sex */
    private static final String sex               = "sex";

    /** birthdayBegin */
    private static final String birthdayBegin     = "birthdayBegin";

    /** birthdayEnd */
    private static final String birthdayEnd       = "birthdayEnd";

    /** 状态 */
    private static final String status            = "status";

    /** 管理者 */
    private static final String manager           = "manager";

    /** 管理时间开始 */
    private static final String gmtManagedBegin   = "gmtManagedBegin";

    /** 管理时间结束 */
    private static final String gmtManagedEnd     = "gmtManagedEnd";

    public LxUserQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxUserQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxUserQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxUserQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxUserQueryCondition putGmtLastLoginBegin(Date gmtLastLoginBegin) {
        addIfExist(LxUserQueryCondition.gmtLastLoginBegin, gmtLastLoginBegin);
        return this;
    }

    public LxUserQueryCondition putGmtLastLoginEnd(Date gmtLastLoginEnd) {
        addIfExist(LxUserQueryCondition.gmtLastLoginEnd, gmtLastLoginEnd);
        return this;
    }

    public LxUserQueryCondition putUsername(String username) {
        addIfExist(LxUserQueryCondition.username, username);
        return this;
    }

    public LxUserQueryCondition putNickname(String nickname) {
        addIfExist(LxUserQueryCondition.nickname, nickname);
        return this;
    }

    public LxUserQueryCondition putRealname(String realname) {
        addIfExist(LxUserQueryCondition.realname, realname);
        return this;
    }

    public LxUserQueryCondition putEmail(String email) {
        addIfExist(LxUserQueryCondition.email, email);
        return this;
    }

    public LxUserQueryCondition putSex(String sex) {
        addIfExist(LxUserQueryCondition.sex, sex);
        return this;
    }

    public LxUserQueryCondition putBirthdayBegin(Date birthdayBegin) {
        addIfExist(LxUserQueryCondition.birthdayBegin, birthdayBegin);
        return this;
    }

    public LxUserQueryCondition putBirthdayEnd(Date birthdayEnd) {
        addIfExist(LxUserQueryCondition.birthdayEnd, birthdayEnd);
        return this;
    }

    public LxUserQueryCondition putStatus(String status) {
        addIfExist(LxUserQueryCondition.status, status);
        return this;
    }

    public LxUserQueryCondition putManager(String manager) {
        addIfExist(LxUserQueryCondition.manager, manager);
        return this;
    }

    public LxUserQueryCondition putGmtManagedBegin(Date gmtManagedBegin) {
        addIfExist(LxUserQueryCondition.gmtManagedBegin, gmtManagedBegin);
        return this;
    }

    public LxUserQueryCondition putGmtManagedEnd(Date gmtManagedEnd) {
        addIfExist(LxUserQueryCondition.gmtManagedEnd, gmtManagedEnd);
        return this;
    }
}
