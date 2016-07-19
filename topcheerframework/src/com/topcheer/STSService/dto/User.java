package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class User extends BaseDto{
	private String loginAccount;
	private String password;
	
	public String getLoginAccount() {
		return loginAccount;
	}
	public void setLoginAccount(String loginAccount) {
		this.loginAccount = loginAccount;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
