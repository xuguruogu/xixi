package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.PM;

public interface PMDao extends BaseDao<PM> {

	/**
	 * 获取最近一次插入的数据的id
	 * @return
	 */
	int select_last_insert();

}
