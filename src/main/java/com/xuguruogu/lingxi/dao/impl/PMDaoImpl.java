package com.xuguruogu.lingxi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.PMDao;
import com.xuguruogu.lingxi.entity.PM;

@Component("pmDao")
public class PMDaoImpl extends BaseDaoImpl<PM> implements
		PMDao {
	private static String n = PM.class.getName();

	public int select_last_insert() {
		System.out.println("[dao]/pmDao/select_last_insert");
		SqlSession session = sqlsessionFactory.openSession();
		int id = session.selectOne(n+".select_last_insert");
		session.close();
		return id;
	}
}
