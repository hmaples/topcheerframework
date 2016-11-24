package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class AnswerDetailInfo extends BaseDto{
	
	private String result_id;//提交信息编号
	private Integer type;//题目类型
	private Integer number;//题目编号
	private String value;//答案选项或分数
	private String content;//答案备注或其他

	
	
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
