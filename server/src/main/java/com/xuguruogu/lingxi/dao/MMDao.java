package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.MM;

public interface MMDao extends BaseDao<MM> {

	/**
	 * 查询用户是否有新消息
	 * @param id
	 * @return
	 */
	int selectNewMsg(int id);

	/**
	 * 清空消息
	 * @param id
	 */
	void delete_by_customerID(int id);

	/**
	 * 设置已读
	 * @param mm
	 */
	void isRead(int id);

}
