package com.topcheer.STSService.service;

import com.topcheer.STSService.dto.User;
import com.topcheer.framework.service.BaseService;

public class STSServiceLoginService  extends BaseService {

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		User user = context.getPara(User.class);
		System.out.println(user.getLoginAccount());
		System.out.println(user.getPassWord());
		if(user.getLoginAccount().equals("loginAccount")&&user.getPassWord().equals("passWord"))
		{
			context.createResult(null, "success", "jsps/main");
		}
	}

}