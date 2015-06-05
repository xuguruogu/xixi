package com.askj.dao;

import com.askj.entity.AboutUs;

public interface AboutUsDao extends BaseDao<AboutUs> {

	/**
	 * 查询关于我们的文章
	 * @return
	 */
	AboutUs query();

	int select_last_insert();
}
