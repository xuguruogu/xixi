package com.xuguruogu.lingxi.dao;

import java.util.List;

import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.Role;

public interface RoleDao extends BaseDao<Role> {
	/**
	 * 查询所有角色
	 * @return
	 */
	public List<Role> selectAll();

	/**
	 * 根据page查询总记录数
	 * @param page
	 * @return
	 */
	public int selectCount(Page page);

	/**
	 * 插入role对象
	 * @param role
	 */
	public void insertRole(Role role);

	/**
	 * 检查角色名是否重复
	 * @param roleName
	 * @return
	 */
	public boolean checkName(String roleName);

	/**
	 * 修改role对象
	 * @param role
	 */
	public void updateRole(Role role);

	/**
	 * 获取最后插入的记录的id
	 * @return
	 */
	public int select_last_insert();
}
