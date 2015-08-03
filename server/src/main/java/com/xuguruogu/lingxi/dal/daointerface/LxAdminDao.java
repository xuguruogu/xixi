package com.xuguruogu.lingxi.dal.daointerface;

import com.xuguruogu.lingxi.dal.dataobject.LxAdminDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminQueryCondition;

public interface LxAdminDao extends LxDaoBase<LxAdminDO, LxAdminQueryCondition> {

    /**
     * @param nickname, tel, email, id
     * @return rows affected
     */
    public long update(String nickname, String tel, String email, long id);

    /**
     * @param password, id
     * @return rows affected
     */
    public long updatePassword(String password, long id);

    /**
     * @param status, manager, id
     * @return rows affected
     */
    public long updateStatus(String status, String manager, long id);

    /**
     * @param id
     * @return rows affected
     */
    public long updateLastLoginTime(long id);

}
