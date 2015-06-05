package com.askj.dao;

import java.util.List;

import com.askj.entity.Page;
import com.askj.entity.Post;

public interface PostDao extends BaseDao<Post> {

	/**
	 * 跟帖后更新帖子最后修改时间
	 * @param post
	 */
	void updateLastUpTime(Post post);

	/**
	 * 点赞后更新点赞数据
	 * @param post
	 */
	void updatePostLike(Post post);

	/**
	 * 后台查询帖子
	 * @param post
	 * @param page
	 * @return
	 */
	List<Post> select_by_page_admin(Post post, Page page);

	/**
	 * 更改置顶
	 * @param post
	 */
	void updateTop(Post post);

	int selectOrderNum();

}
