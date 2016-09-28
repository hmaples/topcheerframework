package com.topcheer.test.service;

import org.springframework.stereotype.Service;

import com.topcheer.framework.service.BaseService;
@Service
public class RegisterService extends BaseService{

	@Override
	protected void doExecute() {
		System.out.println("进入注册页面");
		context.createResult(null, "success", "register");
	}

}
