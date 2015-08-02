package com.xuguruogu.lingxi.dao.impl;

import org.springframework.stereotype.Component;

import com.xuguruogu.lingxi.dao.LoginLogDao;
import com.xuguruogu.lingxi.entity.LoginLog;

@Component("loginLogDao")
public class LoginLogDaoImpl extends BaseDaoImpl<LoginLog> implements
		LoginLogDao {

}
