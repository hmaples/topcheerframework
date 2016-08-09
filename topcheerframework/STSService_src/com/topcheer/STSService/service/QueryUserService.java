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
			userinfo.setUserName("吴彦祖");
			userinfo.setUserIdTypeValue("3");
			userinfo.setUserIdNoValue("123456");
			userinfo.setWorkingStatusValue("01");
			userinfo.setWorkStatusValue("10");
			userinfo.setPositionName("positionName ");
			userinfo.setUserOrganization("userOrganization");
			userinfo.setEntryDate("2016-05-03");
			userinfo.setEntryYear("3");
			userinfo.setBelongAminOrg("中国共产党");
			userinfo.setUserType("3");
			userinfo.setAllowNetwork("3");
			userinfo.setOa("oa1234");
			userinfo.setHandphone("18555326326");
			userinfo.setEmail("1186817178@qq.com");
			userinfo.setEmergencyPerson("紧急联系人");
			userinfo.setContactphone("021-12345678");
			userinfo.setContactaddress("上海市浦东新区");
			userinfo.setEmergencyTel("110");
			userinfo.setWbCode("代号007");
			userinfo.setCName("叫我天正");
			userinfo.setOfficefax("听说这个是传真");
			userinfo.setOfficetel("8533-6723-1234");
			userinfo.setAgentId("agentId001");
			
			
			map.put("status", "success");
			map.put("userinfo", userinfo);
			context.setMap(map);
		}
		
		
	}

}
