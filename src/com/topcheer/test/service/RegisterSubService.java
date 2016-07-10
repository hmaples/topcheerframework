package com.topcheer.test.service;

import com.topcheer.framework.service.BaseService;
import com.topcheer.test.dto.RegisterUser;

public class RegisterSubService extends BaseService {

	@Override
	protected void doExecute() {
		RegisterUser registerUser = context.getPara(RegisterUser.class);
		System.out.println(registerUser.getUserName());
		context.createResult(registerUser, "success", "registerSuccess");
	}

}
