package com.xuguruogu.lingxi.dal.daointerface;

import java.util.Date;

import com.xuguruogu.lingxi.dal.dataobject.LxUserDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserQueryCondition;

public interface LxUserDao extends LxDaoBase<LxUserDO, LxUserQueryCondition> {

    /**
     * @param nickname, realname, tel, email, sex,  birthday, id
     * @return rows affected
     */
    public long update(String nickname, String realname, String tel, String email, String sex,
                       Date birthday, long id);

    /**
     * @param password, id
     * @return rows affected
     */
    public long updatePassword(String password, long id);

    /**
     * @param description, id
     * @return rows affected
     */
    public long updateDescription(String description, long id);

    /**
     * @param portrait, id
     * @return rows affected
     */
    public long updatePortrait(String portrait, long id);

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