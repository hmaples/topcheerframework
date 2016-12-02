package com.topcheer.STSService.dto.m_dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class M_Question extends BaseDto{

	private int sort;
	private String content;
	private List<M_Option> moption;
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getSort() {
		return sort;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}
}
