package com.askj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.askj.dao.MenuDao;
import com.askj.entity.Menu;
import com.askj.entity.Page;

@Component("menuDao")
public class MenuDaoImpl extends BaseDaoImpl<Menu> implements MenuDao {

	public int selectCount(Page page) {
		System.out.print("[dao]查询menu总记录数：");
		SqlSession session = sqlsessionFactory.openSession();
		int menuCount = session.selectOne(Menu.class.getName()+".selectCount", page);
		System.out.println(menuCount);
		session.close();
		return menuCount;
	}

	public boolean check(int id) {
		System.out.print("[dao]检查该菜单是否有子菜单：");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(Menu.class.getName()+".check", id);
		session.close();
		if(count>0){
			System.out.println("有子菜单");
			return true;
		}else{
			System.out.println("没有子菜单");
			return false;
		}
	}

	public List<Menu> selectParentMenu() {
		System.out.println("[dao]查询所有顶层功能模块");
		SqlSession session = sqlsessionFactory.openSession();
		List<Menu> menuList = session.selectList(Menu.class.getName()+".selectParentMenu");
		session.close();
		return menuList;
	}

	public int checkName(String menuName) {
		System.out.print("[dao]检查是否重名：");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(Menu.class.getName()+".checkName", menuName);
		session.close();
		return count;
	}

	public boolean checkRole(int id) {
		System.out.print("[dao]检查该菜单是否有角色拥有：");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(Menu.class.getName()+".checkRole", id);
		session.close();
		if(count>0){
			return true;
		}else{
			return false;
		}
	}

	public List<Menu> selectAllSon() {
		System.out.println("[dao]查询所有子菜单");
		SqlSession session = sqlsessionFactory.openSession();
		List<Menu> menuList = session.selectList(Menu.class.getName()+".selectAllSon");
		session.close();
		return menuList;
	}
}
