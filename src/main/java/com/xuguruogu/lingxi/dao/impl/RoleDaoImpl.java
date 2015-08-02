package com.xuguruogu.lingxi.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.RoleDao;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.Role;

@Component("roleDao")
public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao {

	public List<Role> selectAll() {
		System.out.println("[dao]查询所有角色");
		SqlSession session = sqlsessionFactory.openSession();
		List<Role> roleList = session.selectList(Role.class.getName()+".selectAll");
		session.close();
		return roleList;
	}

	public int selectCount(Page page) {
		System.out.print("[dao]查询总记录数：");
		SqlSession session = sqlsessionFactory.openSession();
		int roleCount = session.selectOne(Role.class.getName()+".selectCount");
		System.out.println(roleCount);
		session.close();
		return roleCount;
	}

	public void insertRole(Role role){
		System.out.println("[dao]插入role："+role);
		SqlSession session = sqlsessionFactory.openSession();
		session.insert(Role.class.getName()+".insertRole", role);
		session.close();
	}

	public boolean checkName(String roleName) {
		System.out.print("[dao]检查角色名是否重复：");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(Role.class.getName()+".checkName", roleName);
		session.close();
		if(count>0){
			System.out.println("重复");
			return true;
		}else{
			System.out.println("不重复");
			return false;
		}
	}

	public void updateRole(Role role) {
		System.out.println("[dao]修改role："+role);
		SqlSession session = sqlsessionFactory.openSession();
		session.insert(Role.class.getName()+".updateRole", role);
		session.close();
	}

	public int select_last_insert() {
		System.out.println("[dao]/roleDao/select_last_insert");
		SqlSession session = sqlsessionFactory.openSession();
		int id = session.selectOne(Role.class.getName()+".select_last_insert");
		session.close();
		return id;
	}
}
