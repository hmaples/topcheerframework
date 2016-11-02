package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class QuestionAnswer extends BaseDto {

	private String radioValue;
	private String checkValue;
	private String textValue;

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

	public String getTextValue() {
		return textValue;
	}

	public void setTextValue(String textValue) {
		this.textValue = textValue;
	}
	
	
	

}
