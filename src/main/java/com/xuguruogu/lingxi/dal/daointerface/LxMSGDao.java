package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxMSGDO;
import com.xuguruogu.lingxi.dal.querycondition.LxMSGQueryCondition;

public interface LxMSGDao extends LxDaoBase<LxMSGDO, LxMSGQueryCondition> {

    /**
     * @param status, id
     * @return rows affected
     */
    public long updateStatus(String status, long id);
}
