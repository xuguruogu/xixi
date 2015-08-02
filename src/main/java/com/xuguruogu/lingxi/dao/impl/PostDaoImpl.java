package com.xuguruogu.lingxi.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.PostDao;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.Post;

@Component("postDao")
public class PostDaoImpl extends BaseDaoImpl<Post> implements PostDao {
	private static String n = Post.class.getName();
	public void updateLastUpTime(Post post) {
		System.out.println("[dao]/postDao/updateLastUpTime");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateLastUpTime", post);
		session.close();
	}
	public void updatePostLike(Post post) {
		System.out.println("[dao]/postDao/updatePostLike");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updatePostLike", post);
		session.close();
	}
	public List<Post> select_by_page_admin(Post post, Page page) {
		System.out.println("[dao]/postDao/select_by_page_admin");
		SqlSession session = sqlsessionFactory.openSession();
		List<Post> list = session.selectList(n+".select_by_page_admin", page);
		return list;
	}
	public void updateTop(Post post) {
		System.out.println("[dao]/postDao/updateTop");
		SqlSession session = sqlsessionFactory.openSession();
		session.update(n+".updateTop", post);
		session.close();
	}
	public int selectOrderNum() {
		System.out.println("[dao]/postDao/selectOrderNum");
		SqlSession session = sqlsessionFactory.openSession();
		int orderNum = session.selectOne(n+".selectOrderNum");
		session.close();
		return orderNum;
	}
	
}
