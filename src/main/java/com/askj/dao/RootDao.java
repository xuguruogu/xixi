package com.askj.dao;

import java.util.List;

import com.askj.entity.Root;

public interface RootDao extends BaseDao<Root> {

	/**
	 * 删除 有关权限
	 * @param id
	 */
	void delete_by_roleID(int id);

	/**
	 * 根据角色查询权限
	 * @param roleID
	 * @return
	 */
	List<Root> select_by_roleID(int roleID);

}
