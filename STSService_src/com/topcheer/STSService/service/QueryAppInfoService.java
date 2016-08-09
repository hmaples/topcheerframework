package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.topcheer.framework.service.BaseService;

public class QueryAppInfoService extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		//data='[{"appName":"A系统","appId":"APPID1"}, {"appName":"B系统","appId":"APPID2"}, {"appName":"C系统","appId":"APPID3"}]'; 
		
		System.out.println("成功进入QueryAppInfoService");
		Map <String,Object> map = new HashMap<String, Object>();
		Map <String,Object> map1 = new HashMap<String, Object>();
		Map <String,Object> map2 = new HashMap<String, Object>();
		Map <String,Object> map3 = new HashMap<String, Object>();
		map1.put("appName", "A系统");
		map1.put("appId", "APPID1");
		map2.put("appName", "B系统");
		map2.put("appId", "APPID2");
		map3.put("appName", "C系统");
		map3.put("appId", "APPID3");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		list.add(map1);
		list.add(map2);
		list.add(map3);
		map.put("list", list);
		System.out.println(list);
		context.setMap(map);
		
	}

}
