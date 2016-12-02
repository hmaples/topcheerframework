package com.topcheer.STSService.dto.m_dto;

import com.topcheer.framework.dto.BaseDto;

public class suvery_o extends BaseDto{
 private int type;
 private int sort;
 private String content ;
 private String value;
 private int sort1;
public void setType(int type) {
	this.type = type;
}
public int getType() {
	return type;
}
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
public void setValue(String value) {
	this.value = value;
}
public String getValue() {
	return value;
}
public void setSort1(int sort1) {
	this.sort1 = sort1;
}
public int getSort1() {
	return sort1;
}
}
