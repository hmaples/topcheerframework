package com.topcheer.STSService.service;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.W_StaffInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("w_selectStaff")
public class W_SelectStaff extends BaseService{
	@Autowired
	public BaseDao baseDao;
	@Override
	public void doBusiness(ApplicationContext context) throws Exception {
		String staffId=context.getPara("number");
		System.out.println("++++++++++++++++++++++++++++++");
		System.out.println(staffId);
		Integer staffID=Integer.parseInt(staffId);
		W_StaffInfo w_staff = baseDao.selectObjectBySqlId(
				"topcheer.w_staffLogin", staffID);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("staffName", w_staff.getUserName());
		context.setMap(map);
	}

}
