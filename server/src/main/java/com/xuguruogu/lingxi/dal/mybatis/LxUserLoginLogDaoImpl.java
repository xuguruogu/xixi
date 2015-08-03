package com.xuguruogu.lingxi.dal.mybatis;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxUserLoginLogDao;
import com.xuguruogu.lingxi.dal.dataobject.LxUserLoginLogDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserLoginLogQueryCondition;

@Component("lxUserLoginLogDao")
public class LxUserLoginLogDaoImpl extends
                                  LxDaoImplBase<LxUserLoginLogDO, LxUserLoginLogQueryCondition>
                                                                                               implements
                                                                                               LxUserLoginLogDao {

    protected LxUserLoginLogDaoImpl() {
        super("LX_USER_LOGIN_LOG");
    }

}
