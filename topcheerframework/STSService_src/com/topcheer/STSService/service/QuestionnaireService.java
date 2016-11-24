package com.topcheer.STSService.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.AnswerDetailInfo;
import com.topcheer.STSService.dto.AnswerInfo;
import com.topcheer.STSService.dto.UserSubmitInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("questionnaireSubmit")
public class QuestionnaireService extends BaseService {

	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		// 取到jsp页面传来所有字符串
		AnswerInfo answerInfo = context.getPara(AnswerInfo.class);
		String[] radioArray = answerInfo.getRadioValue().split(",");
		String[] checkArray = answerInfo.getCheckValue().split(",");
		String[] subArray = answerInfo.getSubValue().split("#");
		String userId = answerInfo.getUserId();
		String userName = answerInfo.getUserName();
		
		// submit_id赋值
		String result_id = UUID.randomUUID().toString().replaceAll("-", "");
		
		// 带有单选按钮的题目答案处理
		for (int i = 0; i < radioArray.length; i++) {
			String[] radioDetailArray = radioArray[i].split("_");
			AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
			answerDetailInfo.setResult_id(result_id);
			answerDetailInfo.setType(Integer.parseInt(radioDetailArray[0]));
			answerDetailInfo.setNumber(Integer.parseInt(radioDetailArray[1]));
			answerDetailInfo.setValue(radioDetailArray[2]);
			
			// 偏向选择
			if ("4".equals(radioDetailArray[0])) {
				for (int k = 0; k < subArray.length; k++) {
					String[] subDetailArray = subArray[k].split("_");
					if (radioDetailArray[1].equals(subDetailArray[1])) {
						if (subDetailArray.length == 3) {
							answerDetailInfo.setContent(subDetailArray[2]);
						} 
						break;
					}
				}
			} 
			baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);
		}

		// 多选题以对象为value，题目编号为key放在map中
		Map<String, AnswerDetailInfo> checkMap = new HashMap<String, AnswerDetailInfo>();
		for (int j = 0; j < checkArray.length; j++) {
			String[] checkDetailArray = checkArray[j].split("_");
			String mapKey = checkDetailArray[1];
			String nowValue = checkDetailArray[2];
			
			AnswerDetailInfo answerDetailInfo = null;
			if (checkMap.containsKey(mapKey)) {
				answerDetailInfo = checkMap.get(mapKey);
			} else {
				answerDetailInfo = new AnswerDetailInfo();
				answerDetailInfo.setResult_id(result_id);
				answerDetailInfo.setType(Integer.parseInt(checkDetailArray[0]));
				answerDetailInfo.setNumber(Integer.parseInt(checkDetailArray[1]));
				//answerDetailInfo.setValue(checkDetailArray[2]);
			}
			if (answerDetailInfo.getValue() == null) {
				answerDetailInfo.setValue(nowValue);
			} else {
				answerDetailInfo.setValue(answerDetailInfo.getValue() + ","+ nowValue);
			}
			//多选题其他选项
			if ("1".equals(mapKey)) {
				if (answerInfo.getRestOne() != null&& answerInfo.getRestOne() != "") {
					String[] restOneArray = answerInfo.getRestOne().split("_");
					answerDetailInfo.setContent(restOneArray[3]);
				}
			}
			if ("2".equals(mapKey)) {
				if (answerInfo.getRestTwo() != null&& answerInfo.getRestTwo() != "") {
					String[] restTwoArray = answerInfo.getRestTwo().split("_");
						answerDetailInfo.setContent(restTwoArray[3]);
				}
			}
//			if (answerInfo.getRestOne() != null&& answerInfo.getRestOne() != "") {
//				String[] restOneArray = answerInfo.getRestOne().split("_");
//				if (mapKey==null||mapKey=="") {
//					answerDetailInfo.setContent(restOneArray[3]);
//				}else if(restOneArray[1].equals(mapKey)){
//					answerDetailInfo.setContent(restOneArray[3]);
//				}
//			}
//			if (answerInfo.getRestTwo() != null&& answerInfo.getRestTwo() != "") {
//				String[] restTwoArray = answerInfo.getRestTwo().split("_");
//				if (mapKey==null||mapKey=="") {
//					answerDetailInfo.setContent(restTwoArray[3]);
//				}else if(restTwoArray[1].equals(mapKey)){
//					answerDetailInfo.setContent(restTwoArray[3]);
//				}
//			}
			
			checkMap.put(mapKey, answerDetailInfo);
		}
		//循环map将数据插入数据库
		for (Map.Entry<String, AnswerDetailInfo> entry : checkMap.entrySet()) {
			baseDao.insertBySqlId("topcheer.AnswerInster", entry.getValue());
		}
		// 建议意见
		String[] suggestArray = answerInfo.getSuggestValue().split("_");
		AnswerDetailInfo answerDetailInfo = new AnswerDetailInfo();
		answerDetailInfo.setType(Integer.parseInt(suggestArray[0]));
		answerDetailInfo.setNumber(Integer.parseInt(suggestArray[1]));
		if(suggestArray.length==4){
		answerDetailInfo.setContent(suggestArray[3]);
		}
		answerDetailInfo.setResult_id(result_id);
		baseDao.insertBySqlId("topcheer.AnswerInster", answerDetailInfo);

		// 用户提交信息状态表插入
		UserSubmitInfo userSubmitInfo = new UserSubmitInfo();
		userSubmitInfo.setUser_id(userId);
		userSubmitInfo.setUser_name(userName);
		userSubmitInfo.setQuestionnaire_id(1);
		userSubmitInfo.setIs_submit("1");
		baseDao.insertBySqlId("topcheer.userSubmit", userSubmitInfo);
		// 提交信息表
		userSubmitInfo.setId(result_id);
		userSubmitInfo.setSubmit_time(new Date());
		baseDao.insertBySqlId("topcheer.submitMessage", userSubmitInfo);
		
		context.createResult(null, "success", "index");
	}

}
