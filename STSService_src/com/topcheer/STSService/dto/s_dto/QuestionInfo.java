package com.topcheer.STSService.dto.s_dto;

import com.topcheer.framework.dto.BaseDto;

public class QuestionInfo extends BaseDto {
	private int id;//题目id
	private String type;//题目类型
	private String content;//题目内容
	private int code;//选项编号
	private String value;//选项内容
	private int sort;//题目排序
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
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
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
