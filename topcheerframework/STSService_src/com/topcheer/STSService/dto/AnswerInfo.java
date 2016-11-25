package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class AnswerInfo extends BaseDto {

	private String radioValue;//单选框字符串
	private String checkValue;//复选框字符串
	private String subValue;//偏向选择
	private String suggestValue;//建议与意见
	private String restOne;//复选其他一
	private String restTwo;//复选其他二
	
	private String userId;//用户编号
	private String userName;//用户姓名
	private int questionnaireId;//试卷编号
	private String submitIs;//提交状态
	
	
	
	
	public int getQuestionnaireId() {
		return questionnaireId;
	}


	public String getSubmitIs() {
		return submitIs;
	}


	public void setSubmitIs(String submitIs) {
		this.submitIs = submitIs;
	}


	public void setQuestionnaireId(int questionnaireId) {
		this.questionnaireId = questionnaireId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRestOne() {
		return restOne;
	}

	public void setRestOne(String restOne) {
		this.restOne = restOne;
	}

	public String getRestTwo() {
		return restTwo;
	}

	public void setRestTwo(String restTwo) {
		this.restTwo = restTwo;
	}

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
