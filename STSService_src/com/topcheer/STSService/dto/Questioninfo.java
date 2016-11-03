package com.topcheer.STSService.dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class Questioninfo extends BaseDto{
	private int issue_id;
	private String type;
	private String content;
	private int option_id;
	private String optionContent;
	private List<String> answerlist;
	
	public List<String> getAnswerlist() {
		return answerlist;
	}
	public void setAnswerlist(List<String> answerlist) {
		this.answerlist = answerlist;
	}
	public int getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOption_id() {
		return option_id;
	}
	public void setOption_id(int option_id) {
		this.option_id = option_id;
	}
	public String getOptionContent() {
		return optionContent;
	}
	public void setOptionContent(String optionContent) {
		this.optionContent = optionContent;
	}

	
}
