package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxMSGDao;
import com.xuguruogu.lingxi.dal.dataobject.LxMSGDO;
import com.xuguruogu.lingxi.dal.querycondition.LxMSGQueryCondition;

@Component("lxMSGDao")
public class LxMSGDaoImpl extends LxDaoImplBase<LxMSGDO, LxMSGQueryCondition> implements LxMSGDao {

    protected LxMSGDaoImpl() {
        super("LX_MSG");
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
