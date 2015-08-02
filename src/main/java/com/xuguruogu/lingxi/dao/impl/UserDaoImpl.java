package com.xuguruogu.lingxi.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.UserDao;
import com.xuguruogu.lingxi.entity.Page;
import com.xuguruogu.lingxi.entity.User;

@Component("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	public int checkUsername(String username) {
		System.out.println("[dao]检查用户名是否存在");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(User.class.getName()+".checkUsername", username);
		session.close();
		return count;
	}

	public User login(User user) {
		System.out.println("[dao]登录验证");
		SqlSession session = sqlsessionFactory.openSession();
		User u = session.selectOne(User.class.getName()+".login", user);
		session.close();
		return u;
	}

	public int selectCount(Page page) {
		System.out.print("[dao]查询user总记录数：");
		SqlSession session = sqlsessionFactory.openSession();
		int userCount = session.selectOne(User.class.getName()+".selectCount", page);
		System.out.println(userCount);
		session.close();
		return userCount;
	}
	

	public List<User> select_by_page(Page page) {
		System.out.println("[dao]分页查询用户信息，page："+page);
		SqlSession session = sqlsessionFactory.openSession();
		List<User> userList = session.selectList(User.class.getName()+".select_by_page", page);
		session.close();
		return userList;
	}

	public boolean checkRole(int id) {
		System.out.print("[dao]检查该角色是否有被用户拥有：");
		SqlSession session = sqlsessionFactory.openSession();
		int count = session.selectOne(User.class.getName()+".checkRole", id);
		if(count>0){
			System.out.println("已被拥有");
			return true;
		}else{
			System.out.println("未被拥有");
			return false;
		}
	}
}
