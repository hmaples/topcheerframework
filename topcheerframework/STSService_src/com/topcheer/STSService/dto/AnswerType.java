package com.topcheer.STSService.dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class AnswerType extends BaseDto{
	private List<AnswerDetailInfo> radioList;
	private List<AnswerDetailInfo> checkList;
	private List<AnswerDetailInfo> subList;
	private List<AnswerDetailInfo> suggestList;
	
	
	public List<AnswerDetailInfo> getRadioList() {
		return radioList;
	}
	public void setRadioList(List<AnswerDetailInfo> radioList) {
		this.radioList = radioList;
	}
	public List<AnswerDetailInfo> getCheckList() {
		return checkList;
	}
	public void setCheckList(List<AnswerDetailInfo> checkList) {
		this.checkList = checkList;
	}
	public List<AnswerDetailInfo> getSubList() {
		return subList;
	}
	public void setSubList(List<AnswerDetailInfo> subList) {
		this.subList = subList;
	}
	public List<AnswerDetailInfo> getSuggestList() {
		return suggestList;
	}
	public void setSuggestList(List<AnswerDetailInfo> suggestList) {
		this.suggestList = suggestList;
	}
	
	
}
