package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxPostQueryCondition extends QueryCondition<LxPostQueryCondition> {

    /**  */
    private static final long   serialVersionUID = -8271131281299532081L;

    /** 创建时间 */
    private static final String gmtCreatedBegin  = "gmtCreatedBegin";

    /** 创建时间结束 */
    private static final String gmtCreatedEnd    = "gmtCreatedEnd";

    /** 用户Id */
    private static final String userId           = "userId";

    /** title */
    private static final String title            = "title";

    /** 内容 */
    private static final String content          = "content";

    /** 搜索内容 */
    private static final String searchText       = "searchText";

    /** 状态 */
    private static final String status           = "status";

    /** 管理者 */
    private static final String manager          = "manager";

    /** 管理时间开始 */
    private static final String gmtManagedBegin  = "gmtManagedBegin";

    /** 管理时间结束 */
    private static final String gmtManagedEnd    = "gmtManagedEnd";

    public LxPostQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxPostQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxPostQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxPostQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxPostQueryCondition putUserId(String userId) {
        addIfExist(LxPostQueryCondition.userId, userId);
        return this;
    }

    public LxPostQueryCondition putTitle(String title) {
        addIfExist(LxPostQueryCondition.title, title);
        return this;
    }

    public LxPostQueryCondition putContent(String content) {
        addIfExist(LxPostQueryCondition.content, content);
        return this;
    }

    public LxPostQueryCondition putSearchText(String searchText) {
        addIfExist(LxPostQueryCondition.searchText, searchText);
        return this;
    }

    public LxPostQueryCondition putStatus(String status) {
        addIfExist(LxPostQueryCondition.status, status);
        return this;
    }

    public LxPostQueryCondition putManager(String manager) {
        addIfExist(LxPostQueryCondition.manager, manager);
        return this;
    }

    public LxPostQueryCondition putGmtManagedBegin(Date gmtManagedBegin) {
        addIfExist(LxPostQueryCondition.gmtManagedBegin, gmtManagedBegin);
        return this;
    }

    public LxPostQueryCondition putGmtManagedEnd(Date gmtManagedEnd) {
        addIfExist(LxPostQueryCondition.gmtManagedEnd, gmtManagedEnd);
        return this;
    }
}