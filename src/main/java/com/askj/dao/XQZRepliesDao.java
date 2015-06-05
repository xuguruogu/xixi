package com.askj.dao;

import java.util.List;

import com.askj.entity.XQZReplies;

public interface XQZRepliesDao extends BaseDao<XQZReplies> {

	/**
	 * 根据小圈子id查询其回复列表
	 * @param xqzID
	 * @return
	 */
	List<XQZReplies> select_by_xqzID(int xqzID);

}
