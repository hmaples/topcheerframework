package com.topcheer.framework.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;



public class BaseDao extends SqlSessionDaoSupport {

	public List<Object> selectBySqlId(String sqlid, Object para) {
		return this.getSqlSession().selectList(sqlid, para);
	}

	public int insertBySqlId(String sqlid, Object value) {
		return this.getSqlSession().insert(sqlid, value);
	}

}
