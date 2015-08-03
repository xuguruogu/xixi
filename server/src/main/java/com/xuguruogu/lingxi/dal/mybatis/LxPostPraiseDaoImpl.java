package com.xuguruogu.lingxi.dal.mybatis;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxPostPraiseDao;
import com.xuguruogu.lingxi.dal.dataobject.LxPostPraiseDO;
import com.xuguruogu.lingxi.dal.querycondition.LxPostPraiseQueryCondition;

@Component("lxPostPraiseDao")
public class LxPostPraiseDaoImpl extends LxDaoImplBase<LxPostPraiseDO, LxPostPraiseQueryCondition>
                                                                                                  implements
                                                                                                  LxPostPraiseDao {

    public LxPostPraiseDaoImpl() {
        super("LX_POSTPRAISE");
    }

}
