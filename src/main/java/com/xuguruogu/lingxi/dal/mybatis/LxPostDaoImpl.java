package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxPostDao;
import com.xuguruogu.lingxi.dal.dataobject.LxPostDO;
import com.xuguruogu.lingxi.dal.querycondition.LxPostQueryCondition;

@Component("lxPostDao")
public class LxPostDaoImpl extends LxDaoImplBase<LxPostDO, LxPostQueryCondition> implements
                                                                                LxPostDao {

    public LxPostDaoImpl() {
        super("LX_POST");
    }

    @Override
    public long update(String title, String content, String pictures, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("title", title);
        param.put("content", content);
        param.put("pictures", pictures);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("update"), param);
        } finally {
            session.close();
        }
    }

    @Override
    public long updatePraiseCount(long praiseCount, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("praiseCount", praiseCount);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updatePraiseCount"), param);
        } finally {
            session.close();
        }
    }

    @Override
    public long updateReplyCount(long replyCount, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("replyCount", replyCount);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updateReplyCount"), param);
        } finally {
            session.close();
        }
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
