package com.topcheer.STSService.dto.m_dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class suvery extends BaseDto{
	private int type;
	private List<M_Question> mquestion;
	public void setType(int type) {
		this.type = type;
	}
	public int getType() {
		return type;
	}
	public void setMquestion(List<M_Question> mquestion) {
		this.mquestion = mquestion;
	}
	public List<M_Question> getMquestion() {
		return mquestion;
	}

}
