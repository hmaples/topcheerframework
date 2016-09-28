package com.topcheer.test.service;

import org.springframework.stereotype.Service;

import com.topcheer.framework.service.BaseService;
@Service
public class GoToAjaxService extends BaseService{

	@Override
	protected void doExecute() {
		context.createResult(null, "success", "ajax");
	}

}
