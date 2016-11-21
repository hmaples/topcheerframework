package com.topcheer.STSService.service;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.STSService.dto.UserInfo;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Service("loginService")
public class LoginService extends BaseService {

	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		UserInfo userInfo = context.getPara(UserInfo.class);
		baseDao.insertBySqlId("trans.insertUserInfo", userInfo);
		userInfo.setUserName("hhmaple");
		baseDao.insertBySqlId("trans.insertUserInfo", userInfo);
		int i = 1/0;
		UserInfo user = baseDao.selectObjectBySqlId("topcheer.loginValidate",
				userInfo.getUserName());
		if (user != null && userInfo.getPassWord().equals(user.getPassWord())) {
			System.out.println("登录成功");
			map.put("message", "登录成功");
			context.createMapResult(map, "success", "index");
		} else {
			System.out.println("登录失败");
			map.put("message", "登录失败");
			context.createMapResult(map, "success", "logon");
		}
	}

}
