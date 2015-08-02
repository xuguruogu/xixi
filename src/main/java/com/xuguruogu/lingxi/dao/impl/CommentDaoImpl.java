package com.xuguruogu.lingxi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.CommentDao;
import com.xuguruogu.lingxi.entity.Comment;

@Component("commentDao")
public class CommentDaoImpl extends BaseDaoImpl<Comment> implements CommentDao {
	private static String n = Comment.class.getName();
	
	public void updateCommentLike(Comment comment) {
		System.out.println("[dao]/commentDao/updateCommentLike");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateCommentLike", comment);
		session.close();
	}

}
