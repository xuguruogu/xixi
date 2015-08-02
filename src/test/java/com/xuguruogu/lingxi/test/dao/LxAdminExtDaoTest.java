package com.xuguruogu.lingxi.test.dao;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.daointerface.LxAdminExtDao;
import com.xuguruogu.lingxi.dal.dataobject.LxAdminExtDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminExtQueryCondition;
import com.xuguruogu.lingxi.test.TestBase;

public class LxAdminExtDaoTest extends TestBase {

    @Autowired
    private LxAdminExtDao lxAdminExtDao;

    @Test
    public void testLxAdminExtDao() {

        //插入
        LxAdminExtDO lxAdminExtDO = new LxAdminExtDO();
        lxAdminExtDO.setUserId(0L);
        lxAdminExtDO.setKey("hello");
        lxAdminExtDO.setValue("world");
        lxAdminExtDao.insert(lxAdminExtDO);
        //

        LxAdminExtQueryCondition lxAdminExtQueryCondition = new LxAdminExtQueryCondition();
        lxAdminExtQueryCondition.putKey("hello");
        Assert.assertEquals(1, lxAdminExtDao.selectCountByQueryCondition(lxAdminExtQueryCondition));
        Assert.assertEquals(1, lxAdminExtDao.selectByQueryCondition(lxAdminExtQueryCondition)
            .size());

    }
}
