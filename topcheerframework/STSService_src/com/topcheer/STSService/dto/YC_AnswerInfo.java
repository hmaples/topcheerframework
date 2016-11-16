package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class YC_AnswerInfo extends BaseDto{
	private Integer id;
	private Integer research_id;
	private Integer issue_id;
	private String issue_answer;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getResearch_id() {
		return research_id;
	}
	public void setResearch_id(Integer research_id) {
		this.research_id = research_id;
	}
	public Integer getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(Integer issue_id) {
		this.issue_id = issue_id;
	}
	public String getIssue_answer() {
		return issue_answer;
	}
	public void setIssue_answer(String issue_answer) {
		this.issue_answer = issue_answer;
	}
	
}
