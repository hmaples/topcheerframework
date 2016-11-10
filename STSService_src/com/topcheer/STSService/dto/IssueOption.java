package com.topcheer.STSService.dto;

import java.util.List;

public class IssueOption {
	private List<String> radioList;
	private List<String> checkboxList;
	private List<String> textList;
	public List<String> getRadioList() {
		return radioList;
	}
	public void setRadioList(List<String> radioList) {
		this.radioList = radioList;
	}
	public List<String> getCheckboxList() {
		return checkboxList;
	}
	public void setCheckboxList(List<String> checkboxList) {
		this.checkboxList = checkboxList;
	}
	public List<String> getTextList() {
		return textList;
	}
	public void setTextList(List<String> textList) {
		this.textList = textList;
	}
	
}
