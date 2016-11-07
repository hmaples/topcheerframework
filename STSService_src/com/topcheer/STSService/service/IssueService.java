package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import com.topcheer.STSService.dto.IssueInfo;
import com.topcheer.STSService.dto.OptionInfo;
import com.topcheer.STSService.dto.Questioninfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.IService;

public class IssueService implements IService {
	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		// TODO Auto-generated method stub
		List<Questioninfo> questionList = baseDao.selectListBySqlId(
				"topcheer.selectQuestionList", null);
		Map<String, Object> questionMap = new HashMap<String, Object>();
		for (int i = 0; i < questionList.size(); i++) {
			Questioninfo questioninfo = questionList.get(i);
			IssueInfo issueInfo = new IssueInfo();
			issueInfo.setIssueId(questioninfo.getIssue_id());
			issueInfo.setContent(questioninfo.getContent());
			issueInfo.setType(questioninfo.getType());
			if (questionMap.containsKey(questioninfo.getIssue_id())) {
				if ("1".equals(questioninfo.getType())||"2".equals(questioninfo.getType())) {
				List<OptionInfo> listOption=new ArrayList<OptionInfo>();
				//得到map的Object
				IssueInfo issueInfoValue=(IssueInfo) questionMap.get(questioninfo.getIssue_id());
				//得到Object里的选项list
				listOption=issueInfoValue.getOptionList();
				//给list添加值
				OptionInfo optionInfo=new OptionInfo();
				optionInfo.setOptionId(questioninfo.getOption_id());
				optionInfo.setOption(questioninfo.getOptionContent());
				listOption.add(optionInfo);
				//把选项list放到Object
				issueInfo.setOptionList(listOption);
				//Object放到Map
				questionMap.put("questioninfo.getIssue_id()", issueInfo);					
				}
			}else {
				if ("1".equals(questioninfo.getType())||"2".equals(questioninfo.getType())) {
					List<OptionInfo> listOption=new ArrayList<OptionInfo>();
					OptionInfo optionInfo=new OptionInfo();
					optionInfo.setOptionId(questioninfo.getOption_id());
					optionInfo.setOption(questioninfo.getOptionContent());
					listOption.add(optionInfo);
					issueInfo.setOptionList(listOption);
					questionMap.put("questioninfo.getIssue_id()", issueInfo);
				}else{
				questionMap.put("questioninfo.getIssue_id()", issueInfo);
			}
			}
		}
	}

}
