package com.topcheer.test.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.topcheer.framework.dao.BaseDao;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.IService;
import com.topcheer.test.dto.LinkInfo;

@Service
public class RegisterSubService implements IService {
	
	@Autowired
	private BaseDao baseDao;

	public void doBusiness(ApplicationContext context) throws Exception {
//		 LinkInfo insertInfo = new LinkInfo();
//		 insertInfo.setAddress("ceshiaddress");
//		 insertInfo.setTagInfo("1111");
//		 insertInfo.setCreateTime(new Date());
//		 dao.insert(insertInfo);
		
//		RegisterUser registerUser = context.getPara(RegisterUser.class);
//		System.out.println(registerUser.getUserName());
//		// 查询单个对象
//		//BaseDao baseDao = new BaseDao();
//		List<Object> linkInfo =  baseDao.selectBySqlId(
//				"topcheer.selectByPrimaryKey", 1);
//		System.out.println(linkInfo.size());
//		// // 查询列表对象
//		// List<LinkInfo> linkList = baseDao.selectList("topcheer.getLinkList");
//		// System.out.println("一共有" + linkList.size() + "个");
//		// // 插入一个对象
//		 LinkInfo insertInfo = new LinkInfo();
//		 insertInfo.setAddress("ceshiaddress");
//		 insertInfo.setTagInfo("1111");
//		 insertInfo.setCreateTime(new Date());
		 
		// System.out.println(baseDao.insertBySqlId("topcheer.insertSelective", insertInfo));
		 
		 //throw new Exception();
		 //throw new Exception();
		// // 查询列表对象
		// linkList = sqlSession.selectList("topcheer.getLinkList");
		// System.out.println("一共有" + linkList.size() + "个");
		 
		 // 查询列表对象
		 List<LinkInfo> linkList = baseDao.selectListBySqlId("topcheer.getLinkList",null);
		 System.out.println("一共有" + linkList.size() + "个");
//		context.createResult(registerUser, "success", "registerSuccess");
		
	}

}
