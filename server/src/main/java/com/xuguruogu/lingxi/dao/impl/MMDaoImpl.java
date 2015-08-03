package com.xuguruogu.lingxi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.MMDao;
import com.xuguruogu.lingxi.entity.MM;

@Component("mmDao")
public class MMDaoImpl extends BaseDaoImpl<MM> implements MMDao {
	private static String n = MM.class.getName();
	public int selectNewMsg(int id) {
		System.out.println("[dao]/mmDao/selectNewMsg");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(n+".selectNewMsg", id);
		session.close();
		return count;
	}
	public void delete_by_customerID(int id) {
		System.out.println("[dao]/mmDao/delete_by_customerID");
		SqlSession session = sqlsessionFactory.openSession();
		session.delete(n+".delete_by_customerID", id);
		session.close();
	}
	public void isRead(int id) {
		System.out.println("[dao]/mmDao/isRead");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".isRead", id);
		session.close();
	}

}
