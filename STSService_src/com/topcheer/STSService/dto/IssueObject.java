package com.topcheer.STSService.dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class IssueObject extends BaseDto{
	private List<IssueInfo> listIssue;

	private List<W_StaffManagerInfo> listStaffManger;
	
	
	
	public List<W_StaffManagerInfo> getListStaffManger() {
		return listStaffManger;
	}

	public void setListStaffManger(List<W_StaffManagerInfo> listStaffManger) {
		this.listStaffManger = listStaffManger;
	}

	public List<IssueInfo> getListIssue() {
		return listIssue;
	}

	public void setListIssue(List<IssueInfo> listIssue) {
		this.listIssue = listIssue;
	}

	
}
