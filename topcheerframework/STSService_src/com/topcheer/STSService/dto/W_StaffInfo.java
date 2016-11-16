package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class W_StaffInfo extends BaseDto {
	private String userName;
	private Integer number;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}

	
}
