package com.topcheer.STSService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.topcheer.STSService.dto.W_StaffInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("w_staffLogin")
public class W_StaffLoginService extends BaseService {

	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {

		W_StaffInfo w_staffInfo = context.getPara(W_StaffInfo.class);
		
		if (w_staffInfo.getNumber() != null) {
			W_StaffInfo w_staff = baseDao.selectObjectBySqlId(
					"topcheer.w_staffLogin", w_staffInfo.getNumber());
			if (w_staff != null) {
				context.getSession().setAttribute("staffId", w_staffInfo.getNumber());
				context.createResult(null, "success", "jsps/w_index");
			} else {
				context.createResult(null, "success", "jsps/w_staffLogin");
			}
		} else {
			context.createResult(null, "success", "jsps/w_staffLogin");
		}

	}
}
