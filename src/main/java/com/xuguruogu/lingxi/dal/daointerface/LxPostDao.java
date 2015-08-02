package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxPostDO;
import com.xuguruogu.lingxi.dal.querycondition.LxPostQueryCondition;

public interface LxPostDao extends LxDaoBase<LxPostDO, LxPostQueryCondition> {

    /**
     * @param title, content, pictures, id
     * @return rows affected
     */
    public long update(String title, String content, String pictures, long id);

    /**
     * @param praiseCount, id
     * @return rows affected
     */
    public long updatePraiseCount(long praiseCount, long id);

    /**
     * @param replyCount, id
     * @return rows affected
     */
    public long updateReplyCount(long replyCount, long id);

    /**
     * @param status, manager, id
     * @return rows affected
     */
    public long updateStatus(String status, String manager, long id);

}