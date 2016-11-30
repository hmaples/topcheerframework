package com.topcheer.STSService.dto.w_dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class ShowQuesInfo extends BaseDto{
	
	private int id;
	private String type;
	private String content;
	private int issueId;
	private List<OptionInfo> optionList;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	public List<OptionInfo> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<OptionInfo> optionList) {
		this.optionList = optionList;
	}
	
	
	
	

}
