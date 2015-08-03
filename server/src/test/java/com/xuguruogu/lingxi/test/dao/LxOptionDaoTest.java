package com.xuguruogu.lingxi.test.dao;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.daointerface.LxOptionDao;
import com.xuguruogu.lingxi.dal.dataobject.LxOptionDO;
import com.xuguruogu.lingxi.dal.querycondition.LxOptionQueryCondition;
import com.xuguruogu.lingxi.test.TestBase;

public class LxOptionDaoTest extends TestBase {

    @Autowired
    private LxOptionDao lxOptionDao;

    @Test
    public void testLxOptionDao() {

        //插入
        LxOptionDO lxOptionDO = new LxOptionDO();
        lxOptionDO.setKey("hello");
        lxOptionDO.setValue("world");
        lxOptionDao.insert(lxOptionDO);

        LxOptionQueryCondition lxOptionQueryCondition = new LxOptionQueryCondition();
        lxOptionQueryCondition.putKey("hello");
        Assert.assertEquals(1, lxOptionDao.selectCountByQueryCondition(lxOptionQueryCondition));
        Assert.assertEquals(1, lxOptionDao.selectByQueryCondition(lxOptionQueryCondition).size());

    }
}
