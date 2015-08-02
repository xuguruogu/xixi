package com.xuguruogu.lingxi.dal.querycondition;

import java.util.Date;

public class LxPostReplyQueryCondition extends QueryCondition<LxPostReplyQueryCondition> {

    /**  */
    private static final long   serialVersionUID = -8271131281299532081L;

    /** 创建时间 */
    private static final String gmtCreatedBegin  = "gmtCreatedBegin";

    /** 创建时间结束 */
    private static final String gmtCreatedEnd    = "gmtCreatedEnd";

    /** 用户Id */
    private static final String userId           = "userId";

    /** 帖子Id */
    private static final String postId           = "postId";

    /** 对应回复Id */
    private static final String postReplyId      = "postReplyId";

    /** 内容 */
    private static final String content          = "content";

    public LxPostReplyQueryCondition putGmtCreatedBegin(Date gmtCreatedBegin) {
        addIfExist(LxPostReplyQueryCondition.gmtCreatedBegin, gmtCreatedBegin);
        return this;
    }

    public LxPostReplyQueryCondition putGmtCreatedEnd(Date gmtCreatedEnd) {
        addIfExist(LxPostReplyQueryCondition.gmtCreatedEnd, gmtCreatedEnd);
        return this;
    }

    public LxPostReplyQueryCondition putUserId(long userId) {
        addIfExist(LxPostReplyQueryCondition.userId, userId);
        return this;
    }

    public LxPostReplyQueryCondition putPostId(long postId) {
        addIfExist(LxPostReplyQueryCondition.postId, postId);
        return this;
    }

    public LxPostReplyQueryCondition putPostReplyId(long postReplyId) {
        addIfExist(LxPostReplyQueryCondition.postReplyId, postReplyId);
        return this;
    }

    public LxPostReplyQueryCondition putContent(String content) {
        addIfExist(LxPostReplyQueryCondition.content, content);
        return this;
    }

}