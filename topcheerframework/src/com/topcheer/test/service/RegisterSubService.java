package com.topcheer.test.service;

import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.service.BaseService;
import com.topcheer.test.dto.LinkInfo;
import com.topcheer.test.dto.RegisterUser;

public class RegisterSubService extends BaseService {

	@Override
	protected void doExecute() throws Exception {
		RegisterUser registerUser = context.getPara(RegisterUser.class);
		System.out.println(registerUser.getUserName());
		// 查询单个对象
		BaseDao baseDao = new BaseDao();
		LinkInfo linkInfo = (LinkInfo) baseDao.selectBySqlId(
				"topcheer.selectByPrimaryKey", 1);
		System.out.println(linkInfo.getAddress());
		// // 查询列表对象
		// List<LinkInfo> linkList = baseDao.selectList("topcheer.getLinkList");
		// System.out.println("一共有" + linkList.size() + "个");
		// // 插入一个对象
		// LinkInfo insertInfo = new LinkInfo();
		// insertInfo.setAddress("ceshiaddress");
		// insertInfo.setTagInfo("1111");
		// insertInfo.setCreateTime(new Date());
		// sqlSession.insert("topcheer.insertSelective", insertInfo);
		// // 查询列表对象
		// linkList = sqlSession.selectList("topcheer.getLinkList");
		// System.out.println("一共有" + linkList.size() + "个");
		context.createResult(registerUser, "success", "registerSuccess");
	}
}
