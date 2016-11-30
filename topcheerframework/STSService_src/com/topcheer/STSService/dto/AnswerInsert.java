package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class AnswerInsert extends BaseDto{
	private int id;
	private int research_id;
	private int issue_id;
	private String issue_answer;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getResearch_id() {
		return research_id;
	}
	public void setResearch_id(int research_id) {
		this.research_id = research_id;
	}
	public int getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}
	public String getIssue_answer() {
		return issue_answer;
	}
	public void setIssue_answer(String issue_answer) {
		this.issue_answer = issue_answer;
	}
	
	
}
