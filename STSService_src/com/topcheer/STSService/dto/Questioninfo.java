package com.topcheer.STSService.dto;

import java.util.List;

import com.topcheer.framework.dto.BaseDto;

public class Questioninfo extends BaseDto{
	private int question_id;
	private String question_title;
	private String type;
	private String answer;
	private List<String> answerlist;
	
	
	
	public List<String> getAnswerlist() {
		return answerlist;
	}
	public void setAnswerlist(List<String> answerlist) {
		this.answerlist = answerlist;
	}
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
	
	
}
