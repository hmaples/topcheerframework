package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class YC_ResultInfo <T>  extends BaseDto{
	private T data;
	private String actionKbn;
	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public String getActionKbn() {
		return actionKbn;
	}

	public void setActionKbn(String actionKbn) {
		this.actionKbn = actionKbn;
	}

	

	
}
