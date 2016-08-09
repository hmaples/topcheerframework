package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.topcheer.framework.service.BaseService;

public class QueryRoleInfoService extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println("成功进入QueryRoleInfoService");
		Map <String,Object> map = new HashMap<String, Object>();
		Map <String,Object> map1 = new HashMap<String, Object>();
		Map <String,Object> map2 = new HashMap<String, Object>();
		Map <String,Object> map3 = new HashMap<String, Object>();
		map1.put("ROLE_ID", "角色ID1");
		map1.put("ROLE_NAME", "角色名1");
		map2.put("ROLE_ID", "角色ID2");
		map2.put("ROLE_NAME", "角色名2");
		map3.put("ROLE_ID", "角色ID3");
		map3.put("ROLE_NAME", "角色名3");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		list.add(map1);
		list.add(map2);
		list.add(map3);
		map.put("list", list);
		context.setMap(map);
	}

}
