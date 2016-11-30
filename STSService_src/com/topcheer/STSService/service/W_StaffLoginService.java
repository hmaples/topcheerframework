package com.topcheer.STSService.service;

import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.W_StaffInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("w_staffLogin")
public class W_StaffLoginService extends BaseService {

	public void doBusiness(ApplicationContext context) throws Exception {
		
		W_StaffInfo w_staffInfo = context.getPara(W_StaffInfo.class);
		//根据员工ID登陆问卷调查主页
		if (w_staffInfo != null) {
			W_StaffInfo w_staff = super.selectObject(
					"topcheer.w_staffLogin", w_staffInfo.getNumber());
			if (w_staff != null) {
				context.getSession().setAttribute("staffId",
						w_staffInfo.getNumber());
				context.createResult(null, "success", "jsps/w_index");
			} else {
				context.createResult(null, "success", "jsps/w_staffLogin");
			}
		} else {
			context.createResult(null, "success", "jsps/w_staffLogin");
		}

	}
}
