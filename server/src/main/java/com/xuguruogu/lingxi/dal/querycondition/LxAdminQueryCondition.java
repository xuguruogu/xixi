package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxAdminQueryCondition extends QueryCondition<LxAdminQueryCondition> {

    /**  */
    private static final long   serialVersionUID  = 2164395703661536854L;

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

    /** 电话 */
    private static final String tel               = "tel";

    /** email */
    private static final String email             = "email";

    /** 状态 */
    private static final String status            = "status";

    /** 管理者 */
    private static final String manager           = "manager";

    /** 管理时间开始 */
    private static final String gmtManagedBegin   = "gmtManagedBegin";

    /** 管理时间结束 */
    private static final String gmtManagedEnd     = "gmtManagedEnd";

    public LxAdminQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxAdminQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxAdminQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxAdminQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxAdminQueryCondition putGmtLastLoginBegin(Date gmtLastLoginBegin) {
        addIfExist(LxAdminQueryCondition.gmtLastLoginBegin, gmtLastLoginBegin);
        return this;
    }

    public LxAdminQueryCondition putGmtLastLoginEnd(Date gmtLastLoginEnd) {
        addIfExist(LxAdminQueryCondition.gmtLastLoginEnd, gmtLastLoginEnd);
        return this;
    }

    public LxAdminQueryCondition putUsername(String username) {
        addIfExist(LxAdminQueryCondition.username, username);
        return this;
    }

    public LxAdminQueryCondition putNickname(String nickname) {
        addIfExist(LxAdminQueryCondition.nickname, nickname);
        return this;
    }

    public LxAdminQueryCondition putTel(String tel) {
        addIfExist(LxAdminQueryCondition.tel, tel);
        return this;
    }

    public LxAdminQueryCondition putEmail(String email) {
        addIfExist(LxAdminQueryCondition.email, email);
        return this;
    }

    public LxAdminQueryCondition putStatus(String status) {
        addIfExist(LxAdminQueryCondition.status, status);
        return this;
    }

    public LxAdminQueryCondition putManager(String manager) {
        addIfExist(LxAdminQueryCondition.manager, manager);
        return this;
    }

    public LxAdminQueryCondition putGmtManagedBegin(Date gmtManagedBegin) {
        addIfExist(LxAdminQueryCondition.gmtManagedBegin, gmtManagedBegin);
        return this;
    }

    public LxAdminQueryCondition putGmtManagedEnd(Date gmtManagedEnd) {
        addIfExist(LxAdminQueryCondition.gmtManagedEnd, gmtManagedEnd);
        return this;
    }
}
