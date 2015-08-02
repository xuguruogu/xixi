package com.xuguruogu.lingxi.dal.mybatis;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxAdminLoginLogDao;
import com.xuguruogu.lingxi.dal.dataobject.LxAdminLoginLogDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminLoginLogQueryCondition;

@Component("lxAdminLoginLogDao")
public class LxAdminLoginLogDaoImpl extends
                                   LxDaoImplBase<LxAdminLoginLogDO, LxAdminLoginLogQueryCondition>
                                                                                                  implements
                                                                                                  LxAdminLoginLogDao {

    protected LxAdminLoginLogDaoImpl() {
        super("LX_ADMIN_LOGIN_LOG");
    }

}
