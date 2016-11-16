package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class YC_User extends BaseDto{
	private String loginAccount;
	private String passWord;
	private String actionKbn;
	private String data1;
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
	public String getActionKbn() {
		return actionKbn;
	}
	public void setActionKbn(String actionKbn) {
		this.actionKbn = actionKbn;
	}
	public String getData1() {
		return data1;
	}
	public void setData1(String data1) {
		this.data1 = data1;
	}
	
}
