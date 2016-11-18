package com.topcheer.STSService.dto;

import com.topcheer.framework.dto.BaseDto;

public class W_StaffManagerInfo extends BaseDto{
	
	private Integer sId;
	private String sName;
	private String depName;
	private String mpostName;
	private String mCoverage;
	private String scDate;
	
	
	public Integer getsId() {
		return sId;
	}
	public void setsId(Integer sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getDepName() {
		return depName;
	}
	public void setDepName(String depName) {
		this.depName = depName;
	}
	public String getMpostName() {
		return mpostName;
	}
	public void setMpostName(String mpostName) {
		this.mpostName = mpostName;
	}
	public String getmCoverage() {
		return mCoverage;
	}
	public void setmCoverage(String mCoverage) {
		this.mCoverage = mCoverage;
	}
	public String getScDate() {
		return scDate;
	}
	public void setScDate(String scDate) {
		this.scDate = scDate;
	}

}
