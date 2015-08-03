package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxUserRelationActionDao;
import com.xuguruogu.lingxi.dal.dataobject.LxUserRelationActionDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserRelationActionQueryCondition;

@Component("lxUserRelationActionDao")
public class LxUserRelationActionDaoImpl
                                        extends
                                        LxDaoImplBase<LxUserRelationActionDO, LxUserRelationActionQueryCondition>
                                                                                                                 implements
                                                                                                                 LxUserRelationActionDao {

    protected LxUserRelationActionDaoImpl() {
        super("LX_USER_RELATION_ACTION");
    }

    @Override
    public long updateStatus(String status, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("status", status);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updateStatus"), param);
        } finally {
            session.close();
        }
    }

}
