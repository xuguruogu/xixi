package com.xuguruogu.lingxi.dal.mybatis;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxPostReplyDao;
import com.xuguruogu.lingxi.dal.dataobject.LxPostReplyDO;
import com.xuguruogu.lingxi.dal.querycondition.LxPostReplyQueryCondition;

@Component("lxPostReplyDao")
public class LxPostReplyDaoImpl extends LxDaoImplBase<LxPostReplyDO, LxPostReplyQueryCondition>
                                                                                               implements
                                                                                               LxPostReplyDao {

    public LxPostReplyDaoImpl() {
        super("LX_POSTREPLY");
    }

}
