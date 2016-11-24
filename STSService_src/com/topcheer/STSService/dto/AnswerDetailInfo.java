package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class AnswerDetailInfo extends BaseDto{
	
	private String result_id;
	private Integer type;
	private Integer number;
	private String value;
	private String content;

	
	
	public String getResult_id() {
		return result_id;
	}
	public void setResult_id(String result_id) {
		this.result_id = result_id;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	

}
