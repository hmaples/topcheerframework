package com.topcheer.STSService.service;

import com.topcheer.STSService.dto.YC_StaffInfo;
import com.topcheer.framework.service.BaseService;

public class SubmitWorkflowService  extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println("成功到service");
		YC_StaffInfo userinfo = context.getPara(YC_StaffInfo.class);
		System.out.println(userinfo.getGender());
		System.out.println(userinfo.getLoginAccount());
		System.out.println(userinfo.getUserCode());
		System.out.println(userinfo.getUserName());
		System.out.println(userinfo.getQueryUserinfo_loginAccount());
		
	}

}
