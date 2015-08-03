package com.xuguruogu.lingxi.dal.mybatis;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxUserRelationDao;
import com.xuguruogu.lingxi.dal.dataobject.LxUserRelationDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserRelationQueryCondition;

@Component("lxUserRelationDao")
public class LxUserRelationDaoImpl extends
                                  LxDaoImplBase<LxUserRelationDO, LxUserRelationQueryCondition>
                                                                                               implements
                                                                                               LxUserRelationDao {

    public LxUserRelationDaoImpl() {
        super("LX_USER_RELATION");
    }

}
