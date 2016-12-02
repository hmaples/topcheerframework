package com.topcheer.STSService.dto.m_dto;

import com.topcheer.framework.dto.BaseDto;

public class M_Option extends BaseDto{
	private String value;
	private int sort1;
	public void setValue(String value) {
		this.value = value;
	}
	public String getValue() {
		return value;
	}
	public void setSort1(int sort1) {
		this.sort1 = sort1;
	}
	public int getSort1() {
		return sort1;
	}
	

}
