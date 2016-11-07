package com.topcheer.STSService.service;

import org.springframework.stereotype.Service;
import com.topcheer.framework.service.BaseService;

@Service("gotoAjax")
public class GoToAjaxService extends BaseService{

	@Override
	protected void doExecute() {
		context.createResult(null, "success", "ajax");
	}

}
