package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class User extends BaseDto{
	private String loginAccount;
	private String passWord;
	public String getLoginAccount() {
		return loginAccount;
	}
	public void setLoginAccount(String loginAccount) {
		this.loginAccount = loginAccount;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	
}
