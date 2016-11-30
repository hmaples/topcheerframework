package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.topcheer.STSService.dto.QuestionResult;
import com.topcheer.STSService.dto.Questioninfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

public class QuestionService extends BaseService {

	public void doBusiness(ApplicationContext context) throws Exception {

		/**
		 * 查询题目
		 * */
		// 定义一个对象，因为context.createResult(result, "success",
		// "jsps/questionSurvey");只可以传个对象出去
		QuestionResult result=new QuestionResult();
		List<Questioninfo> questionlist = super.selectListBySqlId(
				"topcheer.selectQuestionList", null);
		Map<String, Object> questionMap = new HashMap<String, Object>();
		List<Questioninfo> resultList = new ArrayList<Questioninfo>();// 定义一个对象的集合
		for (int i = 0; i < questionlist.size(); i++) {
			Questioninfo questioninfo = questionlist.get(i);// 得到集合的每一行给对象
			if ("1".equals(questioninfo.getType())) {
				if (questionMap.containsKey(questioninfo.getIssue_id())) {

				} else {
					questionMap.put("questioninfo.getIssue_id()", questioninfo);
				}

			}
			// if (questioninfo.getAnswer() == null) {
			// resultList.add(questioninfo);//把对象添加到集合
			// } else {
			// String questionAnswer =
			// questioninfo.getAnswer();//定义一个字符串接收answer
			// String[] questionChoose = questionAnswer.split(",");//分割字符串放到数组
			// /* List<String> ansList = new ArrayList<String>();//为选项数组定义一个集合
			// for (int j = 0; j < questionChoose.length; j++) {
			// ansList.add(questionChoose[j]);//把数组循环添加到集合
			// }
			// questioninfo.setAnswerlist(ansList);//把放有数组的集合传给Questioninfo对象中的Answerlist集合*/
			// questioninfo.setAnswerlist(Arrays.asList(questionChoose));//将数组直接转化为List集合，替换/**/
			// resultList.add(questioninfo);//把questioninfo对象添加到resultList
			// }
		}
		result.setQuesList(resultList);// 把resultList集合放到result对象
		context.createResult(result, "success", "jsps/questionSurvey");
	}
}
