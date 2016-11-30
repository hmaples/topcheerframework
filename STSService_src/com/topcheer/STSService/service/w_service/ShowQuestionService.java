package com.topcheer.STSService.service.w_service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.w_dto.OptionInfo;
import com.topcheer.STSService.dto.w_dto.QuestionInfo;
import com.topcheer.STSService.dto.w_dto.ShowQuesInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("gotoQuestionnaire")
public class ShowQuestionService extends BaseService {

	public void doBusiness(ApplicationContext context) throws Exception {

		List<QuestionInfo> questionList = super.selectListBySqlId(
				"topcheer.selectQuestion", null);
		Map<String, Object> questionMap = new HashMap<String, Object>();
		List<ShowQuesInfo> showQuesList=new ArrayList<ShowQuesInfo>();
		for (int i = 0; i < questionList.size(); i++) {
//			System.out.println("++++++++++++++++++++++++++++");
//			System.out.println(questionList.get(i).getIssueId());
			QuestionInfo questionInfo = questionList.get(i);
			// 得到key
			String questionId = Integer.toString(questionInfo.getId());
			// showQuestion
			ShowQuesInfo showQuesInfo = new ShowQuesInfo();
			showQuesInfo.setIssueId(questionInfo.getIssueId());
			showQuesInfo.setContent(questionInfo.getContent());
			showQuesInfo.setType(questionInfo.getType());
			if (questionMap.containsKey(questionId)) {
				if ("1".equals(questionInfo.getType())
						|| "2".equals(questionInfo.getType())
						|| "3".equals(questionInfo.getType())
						|| "4".equals(questionInfo.getType())) {
					ShowQuesInfo showQuesInfoValue = (ShowQuesInfo) questionMap
							.get(questionId);
					List<OptionInfo> optionInfoList = new ArrayList<OptionInfo>();
					optionInfoList = showQuesInfoValue.getOptionList();
					OptionInfo optionInfo = new OptionInfo();
					optionInfo.setCode(questionInfo.getCode());
					optionInfo.setValue(questionInfo.getValue());
					optionInfoList.add(optionInfo);
					showQuesInfo.setOptionList(optionInfoList);
					questionMap.put(questionId, showQuesInfoValue);
				}

			} else {
				if ("1".equals(questionInfo.getType())
						|| "2".equals(questionInfo.getType())
						|| "3".equals(questionInfo.getType())
						|| "4".equals(questionInfo.getType())) {
					List<OptionInfo> optionInfoList = new ArrayList<OptionInfo>();
					OptionInfo optionInfo = new OptionInfo();
					optionInfo.setCode(questionInfo.getCode());
					optionInfo.setValue(questionInfo.getValue());
					optionInfoList.add(optionInfo);
					showQuesInfo.setOptionList(optionInfoList);
					questionMap.put(questionId, showQuesInfo);

				} else {
					questionMap.put(questionId, showQuesInfo);
				}
			}

		}
//		context.createMapResult(questionMap,"success", "jsps/w_jsps/MyJsp");
		for (Map.Entry<String, Object> entry:questionMap.entrySet()) {
			showQuesList.add((ShowQuesInfo) entry.getValue());
		}
		QuestionInfo questionInfo=new QuestionInfo();
		questionInfo.setShowQuesList(showQuesList);
		for (int j = 0; j < questionInfo.getShowQuesList().size(); j++) {
			System.out.println(questionInfo.getShowQuesList().get(j).getIssueId()+" : "+questionInfo.getShowQuesList().get(j).getContent());
			if ("1".equals(questionInfo.getShowQuesList().get(j).getType())
						|| "2".equals(questionInfo.getShowQuesList().get(j).getType())
						|| "3".equals(questionInfo.getShowQuesList().get(j).getType())
						|| "4".equals(questionInfo.getShowQuesList().get(j).getType())) {
				for (int i = 0; i < questionInfo.getShowQuesList().get(j).getOptionList().size(); i++) {
					System.out.println("选项："+questionInfo.getShowQuesList().get(j).getOptionList().get(i).getValue());
				}
			}
			
		}
		//context.createResult(questionInfo, "success", "jsps/w_jsps/MyJsp");
	}

}
