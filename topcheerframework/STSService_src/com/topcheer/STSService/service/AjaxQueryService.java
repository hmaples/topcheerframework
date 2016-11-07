package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.UserInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("ajaxQuery")
public class AjaxQueryService extends BaseService {

	@Override
	public void doBusiness(ApplicationContext context) throws Exception {
		UserInfo userInfo = context.getPara(UserInfo.class);
		System.out.println(userInfo.getUserName());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", userInfo.getPassWord());
		context.setMap(map);
	}

}
