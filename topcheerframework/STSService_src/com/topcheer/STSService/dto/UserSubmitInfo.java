package com.topcheer.STSService.dto;

import java.util.Date;

import com.topcheer.framework.dto.BaseDto;

public class UserSubmitInfo extends BaseDto{
	
	private String user_id;
	private String user_name;
	private int questionnaire_id;
	private String is_submit;
	private String id;
	private Date submit_time;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public Date getSubmit_time() {
		return submit_time;
	}
	public void setSubmit_time(Date submit_time) {
		this.submit_time = submit_time;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getQuestionnaire_id() {
		return questionnaire_id;
	}
	public void setQuestionnaire_id(int questionnaire_id) {
		this.questionnaire_id = questionnaire_id;
	}
	public String getIs_submit() {
		return is_submit;
	}
	public void setIs_submit(String is_submit) {
		this.is_submit = is_submit;
	}
	
	
}
