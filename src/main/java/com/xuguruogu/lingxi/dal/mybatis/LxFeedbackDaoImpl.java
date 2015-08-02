package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxFeedbackDao;
import com.xuguruogu.lingxi.dal.dataobject.LxFeedbackDO;
import com.xuguruogu.lingxi.dal.querycondition.LxFeedbackQueryCondition;

@Component("lxFeedbackDao")
public class LxFeedbackDaoImpl extends LxDaoImplBase<LxFeedbackDO, LxFeedbackQueryCondition>
                                                                                            implements
                                                                                            LxFeedbackDao {

    protected LxFeedbackDaoImpl() {
        super("LX_FEEDBACK");
    }

    @Override
    public long updateStatus(String status, String manager, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("status", status);
        param.put("manager", manager);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updateStatus"), param);
        } finally {
            session.close();
        }
    }

}
