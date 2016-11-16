package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class YC_QuestionInfo extends BaseDto {
	private Integer questionnaire_id;
	private Integer issue_id;
	private String content;
	private String type;
	
	
	public Integer getQuestionnaire_id() {
		return questionnaire_id;
	}
	public void setQuestionnaire_id(Integer questionnaire_id) {
		this.questionnaire_id = questionnaire_id;
	}
	public Integer getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(Integer issue_id) {
		this.issue_id = issue_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
