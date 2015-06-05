package com.askj.dao;

import java.util.List;

import com.askj.entity.Menu;
import com.askj.entity.Page;

public interface MenuDao extends BaseDao<Menu> {
	/**
	 * 查询总记录数
	 * @param page
	 * @return
	 */
	public int selectCount(Page page);

	/**
	 * 检查该菜单是否有子菜单
	 * @param id
	 * @return
	 */
	public boolean check(int id);

	/**
	 * 查询所有顶层功能模块
	 * @return
	 */
	public List<Menu> selectParentMenu();

	/**
	 * 检查菜单名字是否已经存在
	 * @param menuName
	 */
	public int checkName(String menuName);

	/**
	 * 检查该菜单是否有角色拥有
	 * @param id
	 * @return
	 */
	public boolean checkRole(int id);

	/**
	 * 查询所有子菜单
	 * @return
	 */
	public List<Menu> selectAllSon();
}
