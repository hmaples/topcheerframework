package com.topcheer.test.service;

import com.topcheer.framework.service.BaseService;

public class GoToAjaxService extends BaseService{

	@Override
	protected void doExecute() {
		context.createResult(null, "success", "ajax");
	}

}
