package com.topcheer.framework.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.topcheer.framework.action.SpringContextUtil;

public class BaseDao {

	private SqlSession sqlSession;

	public BaseDao() {
		SqlSessionFactory sqlSessionFactory = SpringContextUtil
				.getBean("sqlsessionFactory");
		sqlSession = sqlSessionFactory.openSession();
	}
	
	public Object selectOne(String sqlId,Object param){
		return sqlSession.selectOne(sqlId, param);
	}
	
	public List<Object> selectList(String sqlId){
		return sqlSession.selectList(sqlId);
	}
	
	
}
