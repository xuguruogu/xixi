package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxUserExtDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserExtQueryCondition;

public interface LxUserExtDao extends LxDaoBase<LxUserExtDO, LxUserExtQueryCondition> {

    /**
     * @param id, value
     * @return rows affected
     */
    public long updateValue(String value, long id);
}
