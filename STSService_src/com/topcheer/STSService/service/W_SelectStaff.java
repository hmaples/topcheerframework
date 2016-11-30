package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.W_StaffInfo;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("w_selectStaff")
public class W_SelectStaff extends BaseService {
	@Override
	public void doBusiness(ApplicationContext context) throws Exception {
		String staffId = context.getPara("number");
		System.out.println(staffId);
		//根据员工ID查找对应员工
		if (staffId != null && staffId != "") {
			Integer staffID = Integer.parseInt(staffId);
			W_StaffInfo w_staff = super.selectObject(
					"topcheer.w_staffLogin", staffID);
			if (w_staff != null) {
				//查出对应员工姓名并将其通过ajax传到jsp
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("staffName", w_staff.getUserName());
				context.setMap(map);
			} else {
				context.createResult(null, "success", "jsps/w_staffLogin");
			}
		} else {
			context.createResult(null, "success", "jsps/w_staffLogin");
		}
	}
}
