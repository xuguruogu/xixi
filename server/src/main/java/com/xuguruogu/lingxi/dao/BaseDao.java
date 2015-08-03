package com.xuguruogu.lingxi.dao;

import java.util.List;

import com.xuguruogu.lingxi.entity.Page;

public interface BaseDao<T> {
	/**
	 * 添加操作
	 * @param t
	 */
	public void insert(T t);
	
	/**
	 * 修改操作
	 * @param t
	 */
	public void update(T t);
	
	/**
	 * 根据id删除操作
	 * @param t
	 * @param id
	 */
	public void delete_by_id(T t, int id);
	
	/**
	 * 根据id查询操作
	 * @param t
	 * @param id
	 * @return
	 */
	public T select_by_id(T t, int id);
	
	public List<T> select_by_page(T t, Page page);
	
	public int selectCount(T t, Page page);
}
