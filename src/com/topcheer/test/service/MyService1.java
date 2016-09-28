package com.topcheer.test.service;

import org.springframework.stereotype.Service;

import com.topcheer.framework.service.BaseService;
import com.topcheer.test.dto.UserInfo;
@Service
public class MyService1 extends BaseService {

	protected void doExecute() {
		// TODO Auto-generated method stub
		
		UserInfo userInfo = context.getPara(UserInfo.class);
		System.out.println(userInfo.getUserName());
		//context.createMoel(o);
		context.createResult(userInfo, "success", "MyJsp");
	}

}
