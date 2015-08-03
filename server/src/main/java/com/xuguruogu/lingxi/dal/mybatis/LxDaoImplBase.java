package com.xuguruogu.lingxi.dal.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.xuguruogu.lingxi.dal.dataobject.Entity;
import com.xuguruogu.lingxi.dal.querycondition.QueryCondition;

public abstract class LxDaoImplBase<T extends Entity, C extends QueryCondition<?>> {

    private String              DBNamespace;

    @Autowired
    protected SqlSessionFactory sqlsessionFactory;

    protected LxDaoImplBase(String DBNamespace) {
        this.DBNamespace = DBNamespace;
    }

    protected final String getMybatisStatementName(String statementName) {
        return DBNamespace + "." + statementName;
    }

    public long insert(T entity) {

        SqlSession session = sqlsessionFactory.openSession();

        try {
            return session.insert(getMybatisStatementName("insert"), entity);
        } finally {
            session.close();
        }
    }

    public long update(T entity) {

        SqlSession session = sqlsessionFactory.openSession();

        try {
            return session.update(getMybatisStatementName("update"), entity);
        } finally {
            session.close();
        }
    }

    public T selectById(Long id) {

        SqlSession session = sqlsessionFactory.openSession();

        try {
            return session.selectOne(getMybatisStatementName("selectById"), id);
        } finally {
            session.close();
        }
    }

    public int deleteById(Long id) {

        SqlSession session = sqlsessionFactory.openSession();

        try {
            return session.delete(getMybatisStatementName("deleteById"), id);
        } finally {
            session.close();
        }
    }

    public long selectCountByQueryCondition(C queryCondition) {

        SqlSession session = sqlsessionFactory.openSession();
        try {
            return session.selectOne(getMybatisStatementName("selectCountByQueryCondition"),
                queryCondition.asMap());
        } finally {
            session.close();
        }
    }

    public List<T> selectByQueryCondition(C queryCondition) {

        SqlSession session = sqlsessionFactory.openSession();

        try {
            return session.selectList(getMybatisStatementName("selectByQueryCondition"),
                queryCondition.asMap());
        } finally {
            session.close();
        }
    }

}