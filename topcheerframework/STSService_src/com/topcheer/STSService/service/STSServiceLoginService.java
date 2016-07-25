package com.topcheer.STSService.service;

import com.topcheer.STSService.dto.User;
import com.topcheer.framework.service.BaseService;

public class STSServiceLoginService  extends BaseService {

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println(111);
		User user = context.getPara(User.class);
		System.out.println(user.getLoginAccount());
		System.out.println(user.getPassWord());
		if("loginAccount".equals(user.getLoginAccount())&&"passWord".equals(user.getPassWord()))
		{
			context.createResult(null, "success", "jsps/main");
		}
	}

}
