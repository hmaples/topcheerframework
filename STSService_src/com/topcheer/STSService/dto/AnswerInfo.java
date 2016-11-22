package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class AnswerInfo extends BaseDto{
	
	private String radioValue;
	private String checkValue;
	private String subValue;
	private String suggestValue;
	
	
	public String getRadioValue() {
		return radioValue;
	}
	public void setRadioValue(String radioValue) {
		this.radioValue = radioValue;
	}
	public String getCheckValue() {
		return checkValue;
	}
	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}
	public String getSubValue() {
		return subValue;
	}
	public void setSubValue(String subValue) {
		this.subValue = subValue;
	}
	public String getSuggestValue() {
		return suggestValue;
	}
	public void setSuggestValue(String suggestValue) {
		this.suggestValue = suggestValue;
	}
	
	

}
