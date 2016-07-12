package com.topcheer.test.service;

import java.util.HashMap;
import java.util.Map;
import com.topcheer.framework.service.BaseService;

public class AjaxService extends BaseService {

	@Override
	protected void doExecute() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", "success");
		context.setMap(map);
	}

}
