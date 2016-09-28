package com.topcheer.framework.service;


import com.topcheer.framework.dto.ApplicationContext;

public abstract class BaseService implements IService {

	protected ApplicationContext context = null;
	
	//protected BaseDao baseDao;
	

	public void doBusiness(ApplicationContext context) throws Exception {
		this.context = context;
		
		//beforExecute();

		doExecute();

		//afterExecute();
	}

	private void beforExecute() {

	}

	private void afterExecute() {
		//sqlSession.rollback();
		//sqlSession.close();
	}

	protected  void doExecute() throws Exception{
		
	}
}
