package com.askj.dao.impl;

import org.springframework.stereotype.Component;

import com.askj.dao.PostRepliesDao;
import com.askj.entity.PostReplies;

@Component("postRepliesDao")
public class PostRepliesDaoImpl extends BaseDaoImpl<PostReplies> implements
		PostRepliesDao {

}
