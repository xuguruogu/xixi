package com.xuguruogu.lingxi.dal.mybatis;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxAdminDao;
import com.xuguruogu.lingxi.dal.dataobject.LxAdminDO;
import com.xuguruogu.lingxi.dal.querycondition.LxAdminQueryCondition;

@Component("lxAdminDao")
public class LxAdminDaoImpl extends LxDaoImplBase<LxAdminDO, LxAdminQueryCondition> implements
                                                                                   LxAdminDao {

    protected LxAdminDaoImpl() {
        super("LX_ADMIN");
    }

    @Override
    public long update(String nickname, String tel, String email, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("nickname", nickname);
        param.put("tel", tel);
        param.put("email", email);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("update"), param);
        } finally {
            session.close();
        }
    }

    @Override
    public long updatePassword(String password, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("password", password);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updatePassword"), param);
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

    @Override
    public long updateLastLoginTime(long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updateLastLoginTime"), param);
        } finally {
            session.close();
        }
    }

}
