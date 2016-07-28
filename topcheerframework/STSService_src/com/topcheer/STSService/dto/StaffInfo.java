package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class StaffInfo  extends BaseDto{
	private String queryUserinfo_loginAccount;
	private String loginAccount;
	private String userCode;
	private String userName;
	private String gender;
	public String getLoginAccount() {
		return loginAccount;
	}
	public void setLoginAccount(String loginAccount) {
		this.loginAccount = loginAccount;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQueryUserinfo_loginAccount() {
		return queryUserinfo_loginAccount;
	}
	public void setQueryUserinfo_loginAccount(String queryUserinfo_loginAccount) {
		this.queryUserinfo_loginAccount = queryUserinfo_loginAccount;
	}
	
}
