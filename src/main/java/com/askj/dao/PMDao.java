package com.askj.dao;

import com.askj.entity.PM;

public interface PMDao extends BaseDao<PM> {

	/**
	 * 获取最近一次插入的数据的id
	 * @return
	 */
	int select_last_insert();

}
