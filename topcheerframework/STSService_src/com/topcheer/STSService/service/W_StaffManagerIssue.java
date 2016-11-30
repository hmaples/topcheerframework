package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.IssueInfo;
import com.topcheer.STSService.dto.IssueObject;
import com.topcheer.STSService.dto.OptionInfo;
import com.topcheer.STSService.dto.Questioninfo;
import com.topcheer.STSService.dto.W_StaffManagerInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("staffManagerSelect")
public class W_StaffManagerIssue extends BaseService{
	
	@Override
	public void doBusiness(ApplicationContext context) throws Exception{
		//根据登陆员工ID查出对应领导
		String staffIManager=context.getPara("staffManager");
		Integer staffManagerId = Integer.parseInt(staffIManager);
		List<W_StaffManagerInfo> w_staffManagerList = baseDao.selectListBySqlId(
			"topcheer.w_staffManager", staffManagerId);
		for (int i = 0; i < w_staffManagerList.size(); i++) {
			//W_StaffManagerInfo w_staffManager=(W_StaffManagerInfo)w_staffManagerList.get(i);
			//根据试卷ID查出对应试题
			String questionnaireID=context.getPara("questionnaireID");
			Integer questionnaireid=Integer.parseInt(questionnaireID);		
			List<Questioninfo> questionList = baseDao.selectListBySqlId(
					"topcheer.selectQuestionList",questionnaireid );
			Map<String, Object> questionMap = new HashMap<String, Object>();
			List<IssueInfo> issueList = new ArrayList<IssueInfo>();
			IssueObject issueObject = new IssueObject();
			for (int j = 0; j < questionList.size(); j++) {
				Questioninfo questioninfo = (Questioninfo) questionList.get(j);
				String issueId =Integer.toString(questioninfo.getIssue_id());				
				IssueInfo issueInfo = new IssueInfo();
				issueInfo.setIssueId(questioninfo.getIssue_id());
				issueInfo.setContent(questioninfo.getContent());
				issueInfo.setType(questioninfo.getType());
				if (questionMap.containsKey(issueId)) {
					if ("1".equals(questioninfo.getType())
							|| "2".equals(questioninfo.getType())) {
						List<OptionInfo> listOption = new ArrayList<OptionInfo>();
						// 得到map的Object
						IssueInfo issueInfoValue = (IssueInfo) questionMap
								.get(issueId);
						// 得到Object里的选项list
						listOption = issueInfoValue.getOptionList();
						// 给list添加值
						OptionInfo optionInfo = new OptionInfo();
						optionInfo.setOptionId(questioninfo.getOption_id());
						optionInfo.setOption(questioninfo.getOptionContent());
						listOption.add(optionInfo);
						// 把选项list放到Object
						issueInfoValue.setOptionList(listOption);
						// Object放到Map
						questionMap.put(issueId, issueInfoValue);
					}
				} else {
					if ("1".equals(questioninfo.getType())
							|| "2".equals(questioninfo.getType())) {
						List<OptionInfo> listOption = new ArrayList<OptionInfo>();
						OptionInfo optionInfo = new OptionInfo();
						optionInfo.setOptionId(questioninfo.getOption_id());
						optionInfo.setOption(questioninfo.getOptionContent());
						listOption.add(optionInfo);
						issueInfo.setOptionList(listOption);
						questionMap.put(issueId, issueInfo);
					} else {
						questionMap.put(issueId, issueInfo);
					}
				}
			}
			for (Map.Entry<String, Object> entry : questionMap.entrySet()) {
				issueList.add((IssueInfo) entry.getValue());
			}
			issueObject.setListIssue(issueList);
			issueObject.setListStaffManger(w_staffManagerList);
			
			if (questionnaireID.equals("3")) {
				context.createResult(issueObject, "success", "jsps/w_testOne");
			}else if (questionnaireID.equals("1")) {
				context.createResult(issueObject, "success", "jsps/w_testTwo");
			}
			
	}
}
}
