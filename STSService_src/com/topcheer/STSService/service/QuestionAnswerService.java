package com.topcheer.STSService.service;

import com.topcheer.STSService.dto.QuestionAnswer;
import com.topcheer.framework.service.BaseService;

public class QuestionAnswerService extends BaseService{
	
	@Override
	protected void doExecute() {
		// TODO Auto-generated method stub
		System.out.println(111);
		QuestionAnswer questionAnswer=context.getPara(QuestionAnswer.class);
		System.out.println(questionAnswer.getRadioValue());
		System.out.println(questionAnswer.getCheckValue());
		System.out.println(questionAnswer.getTextValue());
		
	}
}
