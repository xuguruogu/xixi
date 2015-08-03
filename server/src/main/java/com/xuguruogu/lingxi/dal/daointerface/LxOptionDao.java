package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxOptionDO;
import com.xuguruogu.lingxi.dal.querycondition.LxOptionQueryCondition;

public interface LxOptionDao extends LxDaoBase<LxOptionDO, LxOptionQueryCondition> {

    /**
     * @param id, value
     * @return rows affected
     */
    public long updateValue(String value, long id);
}
