package com.xuguruogu.lingxi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.entity.AboutUs;
import com.xuguruogu.lingxi.dao.AboutUsDao;

@Component("aboutUsDao")
public class AboutUsDaoImpl extends BaseDaoImpl<AboutUs> implements AboutUsDao {

	private static String n = AboutUs.class.getName();
	
	public AboutUs query() {
		System.out.println("[dao]/aboutUsDao/query");
		SqlSession session = sqlsessionFactory.openSession();
		AboutUs au = session.selectOne(n+".query");
		session.close();
		return au;
	}

	public int select_last_insert() {
		System.out.println("[dao]/aboutUsDao/select_last_insert");
		SqlSession session = sqlsessionFactory.openSession();
		int id = session.selectOne(n+".select_last_insert");
		session.close();
		return id;
	}
}
