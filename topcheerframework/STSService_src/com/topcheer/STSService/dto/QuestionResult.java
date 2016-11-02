package com.topcheer.STSService.dto;

import java.util.List;
import com.topcheer.framework.dto.BaseDto;

public class QuestionResult extends BaseDto{

	private List<Questioninfo> quesList;

	public List<Questioninfo> getQuesList() {
		return quesList;
	}

	public void setQuesList(List<Questioninfo> quesList) {
		this.quesList = quesList;
	}
	
}
