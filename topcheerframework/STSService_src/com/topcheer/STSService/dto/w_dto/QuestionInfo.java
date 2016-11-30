package com.topcheer.STSService.dto.w_dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class QuestionInfo extends BaseDto {
	// ii.id,
	// ii.type,
	// ii.content,
	// ci.`code`,
	// ci.`value`,
	// qi.sort AS issueId

	private int id;
	private String type;
	private String content;
	private String code;
	private String value;
	private int issueId;
	private List<ShowQuesInfo> showQuesList;
	
	
	public List<ShowQuesInfo> getShowQuesList() {
		return showQuesList;
	}

	public void setShowQuesList(List<ShowQuesInfo> showQuesList) {
		this.showQuesList = showQuesList;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getIssueId() {
		return issueId;
	}

	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}

}
