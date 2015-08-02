package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxOptionDao;
import com.xuguruogu.lingxi.dal.dataobject.LxOptionDO;
import com.xuguruogu.lingxi.dal.querycondition.LxOptionQueryCondition;

@Component("lxOptionDao")
public class LxOptionDaoImpl extends LxDaoImplBase<LxOptionDO, LxOptionQueryCondition> implements
                                                                                      LxOptionDao {

    protected LxOptionDaoImpl() {
        super("LX_OPTION");
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
