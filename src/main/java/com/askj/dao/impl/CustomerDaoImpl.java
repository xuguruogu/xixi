package com.askj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.askj.dao.CustomerDao;
import com.askj.entity.Customer;

@Component("customerDao")
public class CustomerDaoImpl extends BaseDaoImpl<Customer> implements
		CustomerDao {
	private static String n = Customer.class.getName();
	
	public Customer checkEmail(String email) {
		System.out.println("[dao]/customerDao/checkEmail");
		SqlSession session = sqlsessionFactory.openSession();
		Customer customer = session.selectOne(n+".checkEmail", email);
		System.out.println(JSON.toJSON(customer));
		session.close();
		return customer;
	}

	public void regist(Customer customer) {
		System.out.println("[dao]/customerDao/regist");
		SqlSession session = sqlsessionFactory.openSession();
		session.insert(n+".regist", customer);
		session.close();
	}

	public Customer login(Customer customer) {
		System.out.println("[dao]/customerDao/login");
		SqlSession session = sqlsessionFactory.openSession();
		Customer cus = session.selectOne(n+".login", customer);
		session.close();
		return cus;
	}

	public void updatePassword(Customer customer) {
		System.out.println("[dao]/customerDao/updatePassword");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updatePassword", customer);
		session.close();
	}

	public void updateStatus(Customer customer) {
		System.out.println("[dao]/customerDao/updateStatus");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateStatus", customer);
		session.close();
	}

	public Customer look(int customerID) {
		System.out.println("[dao]/customerDao/look");
		SqlSession session = sqlsessionFactory.openSession();
		Customer cus = session.selectOne(n+".look", customerID);
		session.close();
		return cus;
	}
	
}
