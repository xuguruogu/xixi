package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.Customer;

public interface CustomerDao extends BaseDao<Customer>{

	/**
	 * 检查邮箱是否注册
	 * @param email
	 * @return	检查的对象
	 */
	Customer checkEmail(String email);

	/**
	 * 注册客户
	 * @return
	 */
	void regist(Customer customer);

	/**
	 * 登录验证
	 * @param customer
	 * @return
	 */
	Customer login(Customer customer);

	/**
	 * 修改密码
	 * @param customer
	 */
	void updatePassword(Customer customer);

	/**
	 * 更改帐号状态
	 * @param id
	 */
	void updateStatus(Customer customer);

	/**
	 * 查看用户基本资料
	 * @param customerID
	 * @return
	 */
	Customer look(int customerID);

}
