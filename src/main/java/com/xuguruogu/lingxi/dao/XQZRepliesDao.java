package com.xuguruogu.lingxi.dao;

import java.util.List;

import com.xuguruogu.lingxi.entity.XQZReplies;

public interface XQZRepliesDao extends BaseDao<XQZReplies> {

	/**
	 * 根据小圈子id查询其回复列表
	 * @param xqzID
	 * @return
	 */
	List<XQZReplies> select_by_xqzID(int xqzID);

}
