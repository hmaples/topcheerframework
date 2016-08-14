package com.topcheer.framework.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.topcheer.framework.action.SpringContextUtil;
import com.topcheer.framework.dto.ApplicationContext;

public abstract class BaseService implements IService {

	protected ApplicationContext context = null;

	protected SqlSession sqlSession = null;

	public void doBusiness(ApplicationContext context) throws Exception {
		this.context = context;
		SqlSessionFactory sqlSessionFactory = SpringContextUtil
				.getBean("sqlsessionFactory");
		this.sqlSession = sqlSessionFactory.openSession();
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
