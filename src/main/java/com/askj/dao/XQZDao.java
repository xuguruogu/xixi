package com.askj.dao;

import com.askj.entity.XQZ;

public interface XQZDao extends BaseDao<XQZ> {

	/**
	 * 点赞后更新点赞数据
	 * @param xqz
	 */
	void updateLike(XQZ xqz);

	/**
	 * 丢狗屎I后更新丢狗屎数据
	 * @param xqz
	 */
	void updateDislike(XQZ xqz);

	/**
	 * 更新评论数
	 * @param xqz
	 */
	void updateRepliesCount(XQZ xqz);

}
