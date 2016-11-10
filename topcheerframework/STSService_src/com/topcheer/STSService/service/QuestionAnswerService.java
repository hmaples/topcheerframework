package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.AnswerInsert;
import com.topcheer.STSService.dto.AnswerList;
import com.topcheer.STSService.dto.AnswerOption;
import com.topcheer.STSService.dto.QuestionAnswer;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("gotoquestionSubmitService")
public class QuestionAnswerService extends BaseService {
	
	@Autowired
	private BaseDao baseDao;

	@Override
//	protected void doExecute() {
		public void doBusiness(ApplicationContext context) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("++++++++++++++++++++++++++++++++++++");
		QuestionAnswer questionAnswer = context.getPara(QuestionAnswer.class);
		// System.out.println(questionAnswer.getRadioValue());
		// System.out.println(questionAnswer.getCheckValue());
		// System.out.println(questionAnswer.getTextValue());
		String[] radioIssueOptionId = questionAnswer.getRadioValue().split(",");
		String[] checkboxIssueOptionId = questionAnswer.getCheckValue().split(",");
		String[] textIssueValue = questionAnswer.getTextValue().split("^");
		List<AnswerOption> answerOptionList = new ArrayList<AnswerOption>();
		AnswerList result = new AnswerList();
		// 单选题
		for (int i = 0; i < radioIssueOptionId.length; i++) {
			String[] radioStrings = radioIssueOptionId[i].split("_");
			AnswerOption answerOption = new AnswerOption();
			answerOption.setIssueId(radioStrings[0]);
			answerOption.setOptionId(radioStrings[1]);
			answerOptionList.add(answerOption);
		}
		// 多选题
		for (int j = 0; j < checkboxIssueOptionId.length; j++) {
			String[] checkboxStrings = checkboxIssueOptionId[j].split("_");
			AnswerOption answerOption = new AnswerOption();
			answerOption.setIssueId(checkboxStrings[0]);
			answerOption.setOptionId(checkboxStrings[1]);
			answerOptionList.add(answerOption);
		}
		// 问答题
		for (int k = 0; k < textIssueValue.length; k++) {
			String[] textStrings = textIssueValue[k].split("_");
			AnswerOption answerOption = new AnswerOption();
			answerOption.setIssueId(textStrings[0]);
			answerOption.setOptionId(textStrings[1]);
			answerOptionList.add(answerOption);
		}
		result.setResultList(answerOptionList);
		Map<String, Object> resultMap=new HashMap<String, Object>();
		for (int h = 0; h < result.getResultList().size(); h++) {
			String mapKey=result.getResultList().get(h).getIssueId();
			String mapValue=result.getResultList().get(h).getOptionId();
			if (resultMap.containsKey(mapKey)) {
				mapValue=mapValue+","+result.getResultList().get(h-1).getOptionId();
				resultMap.put(mapKey, mapValue);
			}else {
				resultMap.put(mapKey, mapValue);
			}	
//			System.out.println("题号:"
//					+ result.getResultList().get(h).getIssueId() + ";选项:"
//					+ result.getResultList().get(h).getOptionId());
		}
		
		//问卷提交数据插入
		AnswerInsert answerInsert=new AnswerInsert();
		for(Map.Entry<String, Object> entry:resultMap.entrySet()){
			//answerInsert.setId(6);
			answerInsert.setResearch_id(1);
			answerInsert.setIssue_id(Integer.parseInt(entry.getKey()));
			answerInsert.setIssue_answer((String) entry.getValue());
			baseDao.insertBySqlId("topcheer.insertAnswer", answerInsert);
		//	System.out.println(entry.getKey()+":"+entry.getValue());
		}
		context.createResult(null,"success", "index");
	}
}
