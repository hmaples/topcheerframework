package com.topcheer.test.service;

import com.topcheer.framework.service.BaseService;

public class RegisterService extends BaseService{

	@Override
	protected void doExecute() {
		System.out.println("进入注册页面");
		context.createResult(null, "success", "register");
	}

}
