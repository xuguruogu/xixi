package com.xuguruogu.lingxi.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.RootDao;
import com.xuguruogu.lingxi.entity.Root;

@Component("rootDao")
public class RootDaoImpl extends BaseDaoImpl<Root> implements RootDao {

	private static String n = Root.class.getName();
	public void delete_by_roleID(int id) {
		System.out.println("[dao]/rootDao/delete_by_roleID");
		SqlSession session = sqlsessionFactory.openSession();
		session.delete(n+".delete_by_roleID", id);
		session.close();
	}
	public List<Root> select_by_roleID(int roleID) {
		System.out.println("[dao]/rootDao/select_by_roleID");
		SqlSession session = sqlsessionFactory.openSession();
		List<Root> list = session.selectList(n+".select_by_roleID", roleID);
		session.close();
		return list;
	}

}
