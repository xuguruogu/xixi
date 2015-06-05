package com.askj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.askj.dao.BaseDao;
import com.askj.entity.Page;

public class BaseDaoImpl<T> implements BaseDao<T> {

	@Autowired
	protected SqlSessionFactory sqlsessionFactory;
	
	public void insert(T t) {
		System.out.println("[dao]添加操作");
		SqlSession session = sqlsessionFactory.openSession();
		session.insert(t.getClass().getName()+".insert", t);
		session.close();
	}

	public void update(T t) {
		System.out.println("[dao]修改操作");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(t.getClass().getName()+".update", t);
		session.close();
	}

	public void delete_by_id(T t, int id) {
		System.out.println("[dao]根据id="+id+"删除操作");
		SqlSession session = sqlsessionFactory.openSession();
		session.delete(t.getClass().getName()+".delete_by_id", id);
		session.close();
	}

	public T select_by_id(T t, int id) {
		System.out.println("[dao]根据id="+id+"查询操作");
		SqlSession session = sqlsessionFactory.openSession();
		T t2 = session.selectOne(t.getClass().getName()+".select_by_id", id);
		session.close();
		return t2;
	}

	public List<T> select_by_page(T t, Page page) {
		System.out.println("[dao]分页查询操作");
		SqlSession session = sqlsessionFactory.openSession();
		List<T> list = session.selectList(t.getClass().getName()+".select_by_page", page);
		session.close();
		return list;
	}

	public int selectCount(T t, Page page) {
		System.out.println("[dao]根据page查询总记录数");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(t.getClass().getName()+".selectCount", page);
		session.close();
		return count;
	}

}
