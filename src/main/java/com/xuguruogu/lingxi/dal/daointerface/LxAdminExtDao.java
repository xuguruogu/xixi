package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxAdminExtDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminExtQueryCondition;

public interface LxAdminExtDao extends LxDaoBase<LxAdminExtDO, LxAdminExtQueryCondition> {

    /**
     * @param id, value
     * @return rows affected
     */
    public long updateValue(String value, long id);
}
