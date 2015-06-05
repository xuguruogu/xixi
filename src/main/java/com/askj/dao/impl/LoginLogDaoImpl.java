package com.askj.dao.impl;

import org.springframework.stereotype.Component;

import com.askj.dao.LoginLogDao;
import com.askj.entity.LoginLog;

@Component("loginLogDao")
public class LoginLogDaoImpl extends BaseDaoImpl<LoginLog> implements
		LoginLogDao {

}
