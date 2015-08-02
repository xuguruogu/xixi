package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxUserExtDao;
import com.xuguruogu.lingxi.dal.dataobject.LxUserExtDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserExtQueryCondition;

@Component("lxUserExtDao")
public class LxUserExtDaoImpl extends LxDaoImplBase<LxUserExtDO, LxUserExtQueryCondition> implements
                                                                                         LxUserExtDao {

    protected LxUserExtDaoImpl() {
        super("LX_USER_EXT");
    }

    @Override
    public long updateValue(String value, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("value", value);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("update"), param);
        } finally {
            session.close();
        }
    }
}
