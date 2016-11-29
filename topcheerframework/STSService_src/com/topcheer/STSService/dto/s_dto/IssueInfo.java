package com.topcheer.STSService.dto.s_dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class IssueInfo extends BaseDto {
	
	private int id;
	private String content;
	private String type;
	private List<OptionInfo> optionList;
	

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

	
	

}
