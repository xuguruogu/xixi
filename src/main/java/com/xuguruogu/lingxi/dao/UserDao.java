package com.xuguruogu.lingxi.dao;

import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.User;

public interface UserDao extends BaseDao<User> {
	/**
	 * 登录验证
	 * @param user
	 * @return
	 */
	public User login(User user);
	
	/**
	 * 检查用户名是否存在
	 * @param username
	 * @return
	 */
	public int checkUsername(String username);

	/**
	 * 查询总记录数
	 * @param page
	 * @return
	 */
	public int selectCount(Page page);

	/**
	 * 检查该角色是否有被用户拥有
	 * @param id
	 * @return
	 */
	public boolean checkRole(int id);
}
