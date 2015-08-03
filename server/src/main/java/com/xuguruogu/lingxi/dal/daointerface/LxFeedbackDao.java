package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxFeedbackDO;
import com.xuguruogu.lingxi.dal.querycondition.LxFeedbackQueryCondition;

public interface LxFeedbackDao extends LxDaoBase<LxFeedbackDO, LxFeedbackQueryCondition> {

    /**
     * @param status, manager, id
     * @return rows affected
     */
    public long updateStatus(String status, String manager, long id);

}
