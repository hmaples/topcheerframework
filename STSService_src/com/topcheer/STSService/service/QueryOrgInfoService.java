package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.topcheer.framework.service.BaseService;

public class QueryOrgInfoService extends BaseService{

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		////var data = '[{"ORG_NAME":"机构一","ORG_CODE":"orgcode1","ORG_ID":"orgid1"},{"ORG_NAME":"机构二","ORG_CODE":"orgcode2","ORG_ID":"orgid2"},{"ORG_NAME":"机构三","ORG_CODE":"orgcode3","ORG_ID":"orgid3"}]';
		System.out.println("成功进入 QueryOrgService");
		Map <String,Object> map = new HashMap<String, Object>();
		Map <String,Object> map1 = new HashMap<String, Object>();
		Map <String,Object> map2 = new HashMap<String, Object>();
		Map <String,Object> map3 = new HashMap<String, Object>();
		map1.put("ORG_NAME", "机构一");
		map1.put("ORG_CODE", "orgcode1");
		map1.put("ORG_ID", "orgId1");
		map2.put("ORG_NAME", "机构二");
		map2.put("ORG_CODE", "orgcode2");
		map2.put("ORG_ID", "orgId2");
		map3.put("ORG_NAME", "机构三");
		map3.put("ORG_CODE", "orgcode3");
		map3.put("ORG_ID", "orgId3");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		list.add(map1);
		list.add(map2);
		list.add(map3);
		map.put("list", list);
		context.setMap(map);
	}

}
