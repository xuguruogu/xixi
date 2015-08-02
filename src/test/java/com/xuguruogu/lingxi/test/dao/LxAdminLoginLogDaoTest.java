package com.xuguruogu.lingxi.test.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.daointerface.LxAdminLoginLogDao;
import com.xuguruogu.lingxi.dal.dataobject.LxAdminLoginLogDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminLoginLogQueryCondition;
import com.xuguruogu.lingxi.test.TestBase;

public class LxAdminLoginLogDaoTest extends TestBase {

    @Autowired
    private LxAdminLoginLogDao lxAdminLoginLogDao;

    @Test
    public void testLxAdminLoginLogDao() {

        LxAdminLoginLogDO lxAdminLoginLogDO = new LxAdminLoginLogDO();
        lxAdminLoginLogDO.setId(0L);
        lxAdminLoginLogDO.setIpAdr("192.168.1.100");
        lxAdminLoginLogDao.insert(lxAdminLoginLogDO);

        LxAdminLoginLogQueryCondition lxAdminLoginLogQueryCondition = new LxAdminLoginLogQueryCondition();
        lxAdminLoginLogQueryCondition.putIpAdr("192.168%");

        Assert.assertEquals(1,
            lxAdminLoginLogDao.selectCountByQueryCondition(lxAdminLoginLogQueryCondition));
        List<LxAdminLoginLogDO> lxAdminLoginLogDOList = lxAdminLoginLogDao
            .selectByQueryCondition(lxAdminLoginLogQueryCondition);
        Assert.assertEquals(1, lxAdminLoginLogDOList.size());

    }
}
