package com.topcheer.framework.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;

public abstract class BaseService implements IService {

	protected ApplicationContext context = null;
	
	@Autowired
	protected BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		this.context = context;
		
		beforExecute();

		doExecute();

		afterExecute();
	}

	private void beforExecute() {

	}

	private void afterExecute() {
		//sqlSession.rollback();
		//sqlSession.close();
	}

	protected abstract void doExecute() throws Exception;

}
