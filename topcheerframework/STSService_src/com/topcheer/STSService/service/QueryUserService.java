package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;

import com.topcheer.STSService.dto.StaffInfo;
import com.topcheer.framework.service.BaseService;

public class QueryUserService extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println("成功进入QueryUserService");
		Map<String, Object> map = new HashMap<String, Object>();

		StaffInfo userinfo = context.getPara(StaffInfo.class);
		System.out.println(userinfo.getQueryUserinfo_loginAccount());
		if(userinfo.getQueryUserinfo_loginAccount().equals("A001")){
			userinfo.setQueryUserinfo_loginAccount("A001");
			userinfo.setGender("F");
			userinfo.setLoginAccount("A001");
			userinfo.setUserCode("A0001");
			userinfo.setUserName("大帅比");
			map.put("status", "success");
			map.put("userinfo", userinfo);
			context.setMap(map);
		}
		
		
	}

}
