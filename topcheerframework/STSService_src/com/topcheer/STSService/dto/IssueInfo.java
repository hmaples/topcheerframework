package com.topcheer.STSService.dto;

import java.util.List;

public class IssueInfo {
	private int issueId;
	private String type;
	private String content;
	private List<OptionInfo> optionList;
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
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
	public List<OptionInfo> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<OptionInfo> optionList) {
		this.optionList = optionList;
	}
	
	
	
}
