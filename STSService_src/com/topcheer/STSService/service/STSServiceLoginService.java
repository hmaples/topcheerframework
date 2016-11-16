package com.topcheer.STSService.service;

import com.topcheer.STSService.dto.YC_User;
import com.topcheer.framework.service.BaseService;

public class STSServiceLoginService  extends BaseService {

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println(111);
		YC_User yC_User = context.getPara(YC_User.class);
		System.out.println(yC_User.getLoginAccount());
		System.out.println(yC_User.getPassWord());
		if("loginAccount".equals(yC_User.getLoginAccount())&&"passWord".equals(yC_User.getPassWord()))
		{
			context.createResult(null, "success", "jsps/main");
		}
	}

}
