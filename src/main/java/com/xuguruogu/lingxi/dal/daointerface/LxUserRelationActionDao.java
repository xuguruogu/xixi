package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxUserRelationActionDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserRelationActionQueryCondition;

public interface LxUserRelationActionDao
                                        extends
                                        LxDaoBase<LxUserRelationActionDO, LxUserRelationActionQueryCondition> {

    /**
     * @param status, id
     * @return rows affected
     */
    public long updateStatus(String status, long id);
}
