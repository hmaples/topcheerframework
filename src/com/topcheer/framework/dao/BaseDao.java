package com.topcheer.framework.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseDao extends SqlSessionDaoSupport {

//	@Autowired
//	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
//		super.setSqlSessionTemplate(sqlSessionTemplate);
//	}

	public List<Object> selectBySqlId(String sqlid, Object para) {
		return this.getSqlSession().selectList(sqlid, para);
	}
	
	public int insertBySqlId(String sqlid,Object value){
		return this.getSqlSession().insert(sqlid, value);
	}
}
