package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.AnswerDetailInfo;
import com.topcheer.STSService.dto.AnswerInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("questionnaireSubmit")
public class QuestionnaireService extends BaseService {

	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		
		String answerId=baseDao.selectStringBySqlId("topcheer.selectAnswerId", null);
		int result_id=Integer.parseInt(answerId)+1;
		AnswerInfo answerInfo = context.getPara(AnswerInfo.class);
		String[] radioArray = answerInfo.getRadioValue().split(",");
		String[] checkArray = answerInfo.getCheckValue().split(",");
		String[] subArray = answerInfo.getSubValue().split("#");
		List<AnswerDetailInfo> answerDetailList = new ArrayList<AnswerDetailInfo>();
		// 单选题
		List<AnswerDetailInfo> radioList = new ArrayList<AnswerDetailInfo>();
		for (int i = 0; i < radioArray.length; i++) {
			String[] radioDetailArray = radioArray[i].split("_");
			AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
			if (radioDetailArray[0] == null || radioDetailArray[0] == "") {
			} else {
				answerDetailInfo.setType(Integer.parseInt(radioDetailArray[0]));
			}
			if (radioDetailArray[1] == null || radioDetailArray[1] == "") {
			} else {
				answerDetailInfo.setNumber(Integer
						.parseInt(radioDetailArray[1]));
			}
			answerDetailInfo.setValue(radioDetailArray[2]);
			answerDetailInfo.setContent("");
			answerDetailInfo.setResult_id(result_id);
			baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);
			radioList.add(answerDetailInfo);
		}

		// 多选题
		List<AnswerDetailInfo> checkList = new ArrayList<AnswerDetailInfo>();
		Map<String, AnswerDetailInfo> checkMap = new HashMap<String, AnswerDetailInfo>();
		for (int j = 0; j < checkArray.length; j++) {
			String[] checkDetailArray = checkArray[j].split("_");
			String mapKey = checkDetailArray[1];
			String nowValue = checkDetailArray[2];
			if (checkMap.containsKey(mapKey)) {
				AnswerDetailInfo answerDetailInfo = checkMap.get(mapKey);
				if (answerDetailInfo.getValue() == null) {
					answerDetailInfo.setValue(nowValue);//虽然answerDetailInfo但是answerDetailInfo.getValue()可能为null
				} else {
					answerDetailInfo.setValue(answerDetailInfo.getValue() + ","
							+ nowValue);
				}
				checkMap.put(mapKey, answerDetailInfo);
			} else {
				AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
				answerDetailInfo.setType(Integer.parseInt(checkDetailArray[0]));
				answerDetailInfo.setNumber(Integer
						.parseInt(checkDetailArray[1]));
				answerDetailInfo.setValue(checkDetailArray[2]);
				checkMap.put(mapKey, answerDetailInfo);
			}
		}
		for (Map.Entry<String, AnswerDetailInfo> entry : checkMap.entrySet()) {
			AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
			answerDetailInfo.setType(2);
			answerDetailInfo.setNumber(entry.getValue().getNumber());
			answerDetailInfo.setValue(entry.getValue().getValue());
			if (answerInfo.getRestOne() != null
					&& answerInfo.getRestOne() != "") {
				String[] restOneArray = answerInfo.getRestOne().split("_");
				if (Integer.parseInt(restOneArray[1]) == entry.getValue()
						.getNumber()) {
					answerDetailInfo.setContent(restOneArray[3]);
				}
			} else if (answerInfo.getRestTwo() != null
					&& answerInfo.getRestTwo() != "") {
				String[] restTwoArray = answerInfo.getRestTwo().split("_");
				if (Integer.parseInt(restTwoArray[1]) == entry.getValue()
						.getNumber()) {
					answerDetailInfo.setContent(restTwoArray[3]);
				}
			}else {
				answerDetailInfo.setContent(null);
			}
			answerDetailInfo.setResult_id(result_id);
			baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);
			checkList.add(answerDetailInfo);
		}

		// 偏向选择
		List<AnswerDetailInfo> subList = new ArrayList<AnswerDetailInfo>();
		for (int k = 0; k < subArray.length; k++) {
			String[] subDetailArray = subArray[k].split("_");
			AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
			answerDetailInfo.setType(Integer.parseInt(subDetailArray[0]));
			answerDetailInfo.setNumber(Integer.parseInt(subDetailArray[1]));
			answerDetailInfo.setValue(subDetailArray[2]);
			answerDetailInfo.setContent(subDetailArray[3]);
			answerDetailInfo.setResult_id(result_id);
			baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);
			subList.add(answerDetailInfo);
		}
		// 建议意见
		String[] suggestArray = answerInfo.getSuggestValue().split("_");
		AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
		answerDetailInfo.setType(Integer.parseInt(suggestArray[0]));
		answerDetailInfo.setNumber(Integer.parseInt(suggestArray[1]));
		answerDetailInfo.setValue(suggestArray[2]);
		answerDetailInfo.setContent(suggestArray[3]);
		answerDetailInfo.setResult_id(result_id);
		baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);
		answerDetailList.add(answerDetailInfo);
		context.createResult(null,"success", "index");
	}

}
