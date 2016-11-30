package com.topcheer.framework.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import com.topcheer.framework.dao.IDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.dto.BaseDto;

public abstract class BaseService implements IService {

	protected ApplicationContext context = null;
	
	@Autowired
	protected IDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		this.context = context;
		
		//beforExecute();

		doExecute();

		//afterExecute();
	}
	
	public void doBusinessNoTrans(ApplicationContext context) throws Exception{
		this.context = context;
		doExecute();
	}

	private void beforExecute() {

	}

	private void afterExecute() {
		//sqlSession.rollback();
		//sqlSession.close();
	}

	protected  void doExecute() throws Exception{
		
	}
	
	public <T extends BaseDto>int insert(String sqlid, T param) {
		return baseDao.insert(sqlid, param);
	}

	public int insert(String sqlid, Map<String, Object> value) {
		return baseDao.insert(sqlid, value);
	}

	public <T extends BaseDto>T selectObject(String sqlId, Object param) {
		return baseDao.selectObject(sqlId, param);
	}

	public  void del(String sqlId, BaseDto param) {
		baseDao.del(sqlId, param);

	}

	public void del(String sqlId, Map<String, Object> param) {
		baseDao.del(sqlId, param);

	}

	public <T extends BaseDto>int selectInt(String sqlId, T param) {
		return baseDao.selectInt(sqlId, param);
	}

	public  String selectString(String sqlId, BaseDto param) {
		return baseDao.selectString(sqlId, param);
	}

	public String selectString(String sqlId, Map<String, Object> param) {
		return baseDao.selectString(sqlId, param);
	}

	public void update(String sqlId, BaseDto param) {
		baseDao.update(sqlId, param);

	}

	public void update(String sqlId, Map<String, Object> param) {
		baseDao.update(sqlId, param);

	}

	public int selectInt(String sqlId,  Map<String,Object> param) {
		return baseDao.selectInt(sqlId, param);
	}

	public List<Map<String, Object>> selectListMap(String sqlid,
			Map<String, Object> para) {
		return baseDao.selectListMap(sqlid, para);
	}

	public  <T extends BaseDto> List<T> selectListObject(String sqlid, T para) {
		return baseDao.selectListObject(sqlid, para);
	}
	
	public <T extends BaseDto> List<T> selectListBySqlId(String sqlid,
			Object para){
		return baseDao.selectListBySqlId(sqlid, para);
	}

	public Map<String, Object> selectMap(String sqlId, Map<String, Object> param) {
		return baseDao.selectMap(sqlId, param);
	}
}
