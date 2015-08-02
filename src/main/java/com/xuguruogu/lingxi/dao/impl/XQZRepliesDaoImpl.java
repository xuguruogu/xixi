package com.xuguruogu.lingxi.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.XQZRepliesDao;
import com.xuguruogu.lingxi.entity.XQZReplies;

@Component("xqzRepliesDao")
public class XQZRepliesDaoImpl extends BaseDaoImpl<XQZReplies> implements
		XQZRepliesDao {

	private static String n = XQZReplies.class.getName();
	public List<XQZReplies> select_by_xqzID(int xqzID) {
		System.out.println("[dao]/xqzRepliesDao/select_by_xqzID");
		SqlSession session = sqlsessionFactory.openSession();
		List<XQZReplies> list = session.selectList(n+".select_by_xqzID", xqzID);
		session.close();
		return list;
	}

}
