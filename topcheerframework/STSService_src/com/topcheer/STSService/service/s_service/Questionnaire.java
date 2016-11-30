package com.topcheer.STSService.service.s_service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.IssueObject;
import com.topcheer.STSService.dto.s_dto.IssueInfo;
import com.topcheer.STSService.dto.s_dto.QuestionInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("questionview")
public class Questionnaire extends BaseService {
	
	public void doBusiness(ApplicationContext context){
		List<QuestionInfo> questionList = super.selectListBySqlId("topcheer.selectQuestionnaire", null);
		Map<String, Object> questionMap = new HashMap<String,Object>();
		List<IssueInfo> issueList = new ArrayList<IssueInfo>();
		IssueObject issueObject = new IssueObject();
		for (int i = 0; i<questionList.size(); i++){
//			QuestionInfo questioninfo = (QuestionInfo) questionList.get(i);
//			String issueId = Integer.toString(questioninfo.getId());
//			
//			IssueInfo issueInfo = new IssueInfo();
//			issueInfo.setId(questioninfo.getId());
//			issueInfo.setContent(questioninfo.getContent());
//			issueInfo.setType(questioninfo.getType());
			System.out.println(questionList.get(i).getContent());
			
			
		}
	}
}
