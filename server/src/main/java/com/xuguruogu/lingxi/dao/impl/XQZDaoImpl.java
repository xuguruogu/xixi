package com.xuguruogu.lingxi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.XQZDao;
import com.xuguruogu.lingxi.entity.XQZ;

@Component("xqzDao")
public class XQZDaoImpl extends BaseDaoImpl<XQZ> implements XQZDao {
	private static String n = XQZ.class.getName();
	
	public void updateLike(XQZ xqz) {
		System.out.println("[dao]/xqzDao/updateLike");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateLike", xqz);
		session.close();
	}

	public void updateDislike(XQZ xqz) {
		System.out.println("[dao]/xqzDao/updateDislike");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateDislike", xqz);
		session.close();
	}

	public void updateRepliesCount(XQZ xqz) {
		System.out.println("[dao]/xqzDao/updateRepliesCount");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateRepliesCount", xqz);
		session.close();
	}

}
