package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class ResultDto extends BaseDto{

	private String message;
	private boolean flag;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
}
