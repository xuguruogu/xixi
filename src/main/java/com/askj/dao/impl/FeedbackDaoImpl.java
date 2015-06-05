package com.askj.dao.impl;

import org.springframework.stereotype.Component;

import com.askj.dao.FeedbackDao;
import com.askj.entity.Feedback;

@Component("feedbackDao")
public class FeedbackDaoImpl extends BaseDaoImpl<Feedback> implements
		FeedbackDao {

}
