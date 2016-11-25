package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.AnswerInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("userJudge")
public class UserJudgeService extends BaseService {

	@Autowired
	public BaseDao baseDao;

	@Override
	public void doBusiness(ApplicationContext context) throws Exception {
		AnswerInfo answerInfo=new AnswerInfo();
		answerInfo.setUserId(context.getPara("userID"));
		int questionnaireId=Integer.parseInt(context.getPara("questionnaireID"));
		answerInfo.setQuestionnaireId(questionnaireId);
		
		// 根据员工ID查找对应员工
		String userID = baseDao.selectStringBySqlId("topcheer.userJudge",
				answerInfo);
		if (userID != null && !"".equals(userID)&&userID != "null") {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("message", userID);
			context.setMap(map);
		}
	}
}
