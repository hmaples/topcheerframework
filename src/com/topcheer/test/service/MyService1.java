package com.topcheer.test.service;

import org.springframework.web.servlet.ModelAndView;

import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;
import com.topcheer.test.dto.InData;
import com.topcheer.test.dto.OutData;

public class MyService1 extends BaseService {

	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		
		InData in = context.getPara(InData.class);
		System.out.println(in.getActionNum());
		OutData o = new OutData();
		//context.createMoel(o);
	
	}

}
