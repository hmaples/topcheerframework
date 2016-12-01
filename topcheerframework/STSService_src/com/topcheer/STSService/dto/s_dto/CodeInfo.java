package com.topcheer.STSService.dto.s_dto;

import com.topcheer.framework.dto.BaseDto;

public class CodeInfo extends BaseDto {
	private int code;
	private String value;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}
