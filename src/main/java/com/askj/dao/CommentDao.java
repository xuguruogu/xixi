package com.askj.dao;

import com.askj.entity.Comment;

public interface CommentDao extends BaseDao<Comment> {

	/**
	 * 点赞后更新点赞数据
	 * @param comment
	 */
	void updateCommentLike(Comment comment);

}
