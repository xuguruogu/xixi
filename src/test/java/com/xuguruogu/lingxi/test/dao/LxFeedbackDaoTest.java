package com.xuguruogu.lingxi.test.dao;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.daointerface.LxFeedbackDao;
import com.xuguruogu.lingxi.dal.dataobject.LxFeedbackDO;
import com.xuguruogu.lingxi.dal.enums.FeedbackStatusType;
import com.xuguruogu.lingxi.dal.querycondition.LxFeedbackQueryCondition;
import com.xuguruogu.lingxi.test.TestBase;

public class LxFeedbackDaoTest extends TestBase {

    @Autowired
    private LxFeedbackDao lxFeedbackDao;

    @Test
    public void testLxFeedbackDao() {

        //插入
        LxFeedbackDO lxFeedbackDO = new LxFeedbackDO();
        lxFeedbackDO.setTitle("test");
        lxFeedbackDO.setContent("哈哈");
        lxFeedbackDO.setStatus(FeedbackStatusType.SUSPENDING.getCode());

        lxFeedbackDao.insert(lxFeedbackDO);

        LxFeedbackQueryCondition lxFeedbackQueryCondition = new LxFeedbackQueryCondition();
        lxFeedbackQueryCondition.putContent("哈%");
        Assert.assertEquals(1, lxFeedbackDao.selectCountByQueryCondition(lxFeedbackQueryCondition));
        Assert.assertEquals(1, lxFeedbackDao.selectByQueryCondition(lxFeedbackQueryCondition)
            .size());

    }
}
