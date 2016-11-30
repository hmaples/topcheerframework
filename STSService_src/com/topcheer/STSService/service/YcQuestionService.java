package com.topcheer.STSService.service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.YC_ResultInfo;
import com.topcheer.STSService.dto.YC_User;
import com.topcheer.STSService.dto.YC_AnswerInfo;
import com.topcheer.framework.dto.BaseDto;
import com.topcheer.framework.service.BaseService;
@Service
public class YcQuestionService extends BaseService{
	
	@Override
	protected void doExecute() {
		YC_User yC_User = context.getPara(YC_User.class);
		System.out.println(yC_User.getActionKbn());
		if("enterMyQuestion".equals(yC_User.getActionKbn())){
			System.out.println("成功进入QuestionService查询我的调查问卷");//getQuestionInfoList
			List<BaseDto> questionList = baseDao.selectListBySqlId("getQuestionInfoList", null);
			List<BaseDto> optionList = baseDao.selectListBySqlId("getOptionInfoList",null);
			System.out.println("一共有" + questionList.size() + "个");
			System.out.println("一共有" + optionList.size() + "个");
			
			Map<String, List<BaseDto>> map = new HashMap<String, List<BaseDto>>();
			map.put("questionList", questionList);
			map.put("optionList", optionList);
			@SuppressWarnings("rawtypes")
			YC_ResultInfo<Map> result = new YC_ResultInfo<Map>();
			result.setData(map);
			context.createResult(result, "success", "ycSubmitQuestion");
		}else if ("submitMyAnswer".equals(yC_User.getActionKbn())) {
			System.out.println("成功进入QuestionService提交我的答案");
			System.out.println(yC_User.getData1());
			//解析字符串
			String str = yC_User.getData1();
			String answer = str.substring(2, str.length()-2);
			System.out.println(answer);
			String[] answerArr = answer.split("@@@@\",\"");
			List<String> answerList =  Arrays.asList(answerArr);
			Map<String,String> mapAnswer = new HashMap<String,String>();
			if(answerList!=null&&answerList.size()>0){
				for (String string : answerList) {
					String strEach = null;
					if(string.startsWith("radio_")){//单选框
						strEach = string.substring(6);
						String[] arr = strEach.split("_");
						mapAnswer.put(arr[0], arr[1]);
//						System.out.println(strEach);
					}else if(string.startsWith("checkbox_")){//复选框
						strEach = string.substring(9);
						String[] arr = strEach.split("_");
						if(mapAnswer.containsKey(arr[0])){
							StringBuffer sb = new StringBuffer(arr[1]);
							sb.append(","+mapAnswer.get(arr[0]));
							mapAnswer.put(arr[0], sb.toString());
						}else {
							mapAnswer.put(arr[0], arr[1]);
						}
						System.out.println(strEach);
					}else {//文本框
						String[] arr = string.split("\\$\\$");
						mapAnswer.put(arr[0], arr[1]);
					}
					System.out.println(string);
				}
			}
			for (Map.Entry<String, String> entry : mapAnswer.entrySet()) {
				YC_AnswerInfo answerInfo = new YC_AnswerInfo();
				answerInfo.setResearch_id(1);
				answerInfo.setIssue_id(Integer.parseInt(entry.getKey()));
				answerInfo.setIssue_answer(entry.getValue());
				super.insert("insertSanshaoAnswer", answerInfo);
			}
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("status", "success");
			map.put("messege", "答案已经提交到数据库");
			context.setMap(map);
		}

		
	}

}