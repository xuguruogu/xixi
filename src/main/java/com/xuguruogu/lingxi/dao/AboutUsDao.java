package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.AboutUs;

public interface AboutUsDao extends BaseDao<AboutUs> {

	/**
	 * 查询关于我们的文章
	 * @return
	 */
	AboutUs query();

	int select_last_insert();
}
