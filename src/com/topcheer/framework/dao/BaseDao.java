package com.topcheer.framework.dao;

import java.util.List;
import org.apache.poi.ss.formula.functions.T;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.topcheer.framework.dto.BaseDto;

@SuppressWarnings("hiding")
public class BaseDao extends SqlSessionDaoSupport {

	public <T extends BaseDto> List<T> selectListBySqlId(String sqlid,
			Object para) {
		return this.getSqlSession().selectList(sqlid, para);
	}

	public int insertBySqlId(String sqlid, Object value) {
		return this.getSqlSession().insert(sqlid, value);
	}

	public <T extends BaseDto> T selectObjectBySqlId(String sqlId, Object param) {
		return this.getSqlSession().selectOne(sqlId, param);
	}

}
