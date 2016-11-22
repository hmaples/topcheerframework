package com.topcheer.STSService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.AnswerInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;


@Service("questionnaireSubmit")
public class QuestionnaireService extends BaseService{
	
	@Autowired
	private BaseDao baseDao;
	
	public void doBusiness(ApplicationContext context) throws Exception{
		
		AnswerInfo answerInfo=context.getPara(AnswerInfo.class);
		System.out.println(answerInfo.getRadioValue());
		System.out.println(answerInfo.getSuggestValue());
		System.out.println(answerInfo.getCheckValue());
	}
	

}
