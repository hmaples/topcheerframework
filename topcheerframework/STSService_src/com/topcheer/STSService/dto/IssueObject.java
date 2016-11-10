package com.topcheer.STSService.dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class IssueObject extends BaseDto{
	private List<IssueInfo> listIssue;

	public List<IssueInfo> getListIssue() {
		return listIssue;
	}

	public void setListIssue(List<IssueInfo> listIssue) {
		this.listIssue = listIssue;
	}

	
}
