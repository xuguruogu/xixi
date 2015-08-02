package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.Comment;

public interface CommentDao extends BaseDao<Comment> {

	/**
	 * 点赞后更新点赞数据
	 * @param comment
	 */
	void updateCommentLike(Comment comment);

}
