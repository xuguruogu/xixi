package com.xuguruogu.lingxi.dal.mybatis;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dal.daointerface.LxUserDao;
import com.xuguruogu.lingxi.dal.dataobject.LxUserDO;
import com.xuguruogu.lingxi.dal.querycondition.LxUserQueryCondition;

@Component("lxUserDao")
public class LxUserDaoImpl extends LxDaoImplBase<LxUserDO, LxUserQueryCondition> implements
                                                                                LxUserDao {

    protected LxUserDaoImpl() {
        super("LX_USER");
    }

    @Override
    public long update(String nickname, String realname, String tel, String email, String sex,
                       Date birthday, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("nickname", nickname);
        param.put("realname", realname);
        param.put("tel", tel);
        param.put("email", email);
        param.put("sex", sex);
        param.put("birthday", birthday);
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
    public long updateDescription(String description, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("description", description);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updateDescription"), param);
        } finally {
            session.close();
        }
    }

    @Override
    public long updatePortrait(String portrait, long id) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("portrait", portrait);
        param.put("id", id);

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.update(this.getMybatisStatementName("updatePortrait"), param);
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
