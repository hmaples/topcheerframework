package com.topcheer.framework.service;

import com.topcheer.framework.dto.ApplicationContext;

public class BaseService implements IService {

	protected ApplicationContext context = null;

	public void doBusiness(ApplicationContext context) {
		this.context = context;
		beforExecute();

		doExecute();

		afterExecute();
	}

	private void beforExecute() {

	}

	private void afterExecute() {

	}

	protected void doExecute() {

	}

}
