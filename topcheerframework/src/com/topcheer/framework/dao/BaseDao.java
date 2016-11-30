package com.topcheer.framework.dao;

import java.util.List;
import java.util.Map;
import org.apache.poi.ss.formula.functions.T;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.topcheer.framework.dto.BaseDto;

@SuppressWarnings("hiding")
public class BaseDao extends SqlSessionDaoSupport implements IDao {

	public <T extends BaseDto> int insert(String sqlid, Object value) {
		return this.getSqlSession().insert(sqlid, value);
	}

	public int insert(String sqlid, Map<String, Object> value) {
		return this.getSqlSession().insert(sqlid, value);
	}

	public <T extends BaseDto> T selectObject(String sqlId, T param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public void del(String sqlId, Map<String, Object> param) {
		this.getSqlSession().delete(sqlId, param);

	}

	public String selectString(String sqlId, Map<String, Object> param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public void update(String sqlId, Map<String, Object> param) {
		this.getSqlSession().update(sqlId, param);

	}

	public List<Map<String, Object>> selectListMap(String sqlid,
			Map<String, Object> para) {
		return this.getSqlSession().selectList(sqlid, para);
	}

	public Map<String, Object> selectMap(String sqlId, Map<String, Object> param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public int selectInt(String sqlId, Map<String, Object> param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public <T extends BaseDto> void del(String sqlId, T param) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete(sqlId, param);
	}

	public <T extends BaseDto> int insert(String sqlid, T value) {
		return this.getSqlSession().insert(sqlid, value);
	}

	public <T extends BaseDto> int selectInt(String sqlId, T param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public <T extends BaseDto> List<T> selectListBySqlId(String sqlid,
			Object para) {
		return this.getSqlSession().selectList(sqlid, para);
	}

	public <T extends BaseDto> List<T> selectListObject(String sqlid, T para) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList(sqlid, para);
	}

	public <T extends BaseDto> T selectObject(String sqlId, Object param) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public <T extends BaseDto> String selectString(String sqlId, T param) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne(sqlId, param);
	}

	public <T extends BaseDto> void update(String sqlId, T param) {
		// TODO Auto-generated method stub
		this.getSqlSession().update(sqlId, param);
	}

}
