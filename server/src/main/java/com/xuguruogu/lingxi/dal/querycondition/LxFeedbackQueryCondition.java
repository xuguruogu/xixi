package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxFeedbackQueryCondition extends QueryCondition<LxFeedbackQueryCondition> {

    /**  */
    private static final long   serialVersionUID = 8433185769753143449L;

    /** 创建时间开始 */
    private static final String gmtCreatedBegin  = "gmtCreatedBegin";

    /** 创建时间结束 */
    private static final String gmtCreatedEnd    = "gmtCreatedEnd";

    /** 处理时间开始 */
    private static final String gmtHandledBegin  = "gmtHandledBegin";

    /** 处理时间结束 */
    private static final String gmtHandledEnd    = "gmtHandledEnd";

    /** 用户id */
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

    public LxFeedbackQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxFeedbackQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxFeedbackQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxFeedbackQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxFeedbackQueryCondition putGmtHandledBegin(Date gmtHandledBegin) {
        addIfExist(LxFeedbackQueryCondition.gmtHandledBegin, gmtHandledBegin);
        return this;
    }

    public LxFeedbackQueryCondition putGmtHandledEnd(Date gmtHandledEnd) {
        addIfExist(LxFeedbackQueryCondition.gmtHandledEnd, gmtHandledEnd);
        return this;
    }

    public LxFeedbackQueryCondition putUserId(String userId) {
        addIfExist(LxFeedbackQueryCondition.userId, userId);
        return this;
    }

    public LxFeedbackQueryCondition putTitle(String title) {
        addIfExist(LxFeedbackQueryCondition.title, title);
        return this;
    }

    public LxFeedbackQueryCondition putContent(String content) {
        addIfExist(LxFeedbackQueryCondition.content, content);
        return this;
    }

    public LxFeedbackQueryCondition putSearchText(String searchText) {
        addIfExist(LxFeedbackQueryCondition.searchText, searchText);
        return this;
    }

    public LxFeedbackQueryCondition putStatus(String status) {
        addIfExist(LxFeedbackQueryCondition.status, status);
        return this;
    }

    public LxFeedbackQueryCondition putManager(String manager) {
        addIfExist(LxFeedbackQueryCondition.manager, manager);
        return this;
    }

    public LxFeedbackQueryCondition putGmtManagedBegin(Date gmtManagedBegin) {
        addIfExist(LxFeedbackQueryCondition.gmtManagedBegin, gmtManagedBegin);
        return this;
    }

    public LxFeedbackQueryCondition putGmtManagedEnd(Date gmtManagedEnd) {
        addIfExist(LxFeedbackQueryCondition.gmtManagedEnd, gmtManagedEnd);
        return this;
    }
}