package com.xuguruogu.lingxi.test.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.daointerface.LxAdminDao;
import com.xuguruogu.lingxi.dal.dataobject.LxAdminDO;
import com.xuguruogu.lingxi.dal.enums.AdminStatusType;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminQueryCondition;
import com.xuguruogu.lingxi.test.TestBase;

public class LxAdminDaoTest extends TestBase {

    @Autowired
    private LxAdminDao lxAdminDao;

    @Test
    public void testLxAdminDao() {

        LxAdminQueryCondition lxAdminQueryCondition = new LxAdminQueryCondition();
        lxAdminQueryCondition.putUsername("kent");
        //查询用户名

        List<LxAdminDO> lxAdminDOList = lxAdminDao.selectByQueryCondition(lxAdminQueryCondition);
        Assert.assertEquals(0, lxAdminDOList.size());

        //测试insert
        LxAdminDO lxAdminDO = new LxAdminDO();
        lxAdminDO.setUsername("kent");
        lxAdminDO.setPassword("123");
        lxAdminDO.setNickname("本利");
        lxAdminDO.setStatus(AdminStatusType.ACTIVE.getCode());
        lxAdminDao.insert(lxAdminDO);
        lxAdminDOList = lxAdminDao.selectByQueryCondition(lxAdminQueryCondition);
        Assert.assertEquals(1, lxAdminDOList.size());
        lxAdminDO = lxAdminDOList.get(0);

        //测试update
        lxAdminDao.updatePassword("1234", lxAdminDO.getId());

        lxAdminDOList = lxAdminDao.selectByQueryCondition(lxAdminQueryCondition);
        Assert.assertNotNull(lxAdminDOList);
        Assert.assertEquals(1, lxAdminDOList.size());
        Assert.assertEquals("1234", lxAdminDOList.get(0).getPassword());

        //测试分页查询

        Assert.assertEquals(1, lxAdminDao.selectCountByQueryCondition(lxAdminQueryCondition));
    }
}
