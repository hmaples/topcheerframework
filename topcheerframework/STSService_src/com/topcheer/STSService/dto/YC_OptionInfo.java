package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class YC_OptionInfo extends BaseDto{
	private Integer issue_id;
	private Integer sort;
	private String 	content;
	
	
	
	public Integer getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(Integer issue_id) {
		this.issue_id = issue_id;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
