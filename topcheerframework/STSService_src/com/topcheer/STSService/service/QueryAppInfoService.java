package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;

import com.topcheer.framework.service.BaseService;

public class QueryAppInfoService extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println("成功进入QueryAppInfoService");
		Map <String,Object> map = new HashMap<String, Object>();
		String[] str = {"机构一","机构二"};
		map.put("jasonString", str);
		context.setMap(map);
		
	}

}
