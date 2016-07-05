package com.topcheer.framework.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;

@Controller
public class BaseAction {

	@RequestMapping("commonAction")
	public ModelAndView doAction(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) {
		String actionNum = request.getParameter("actionNum");
		// �����������
		if (actionNum == null || "".equals(actionNum)) {
			ModelAndView errorModel = new ModelAndView();
			errorModel.setViewName("error");
			return errorModel;
		}
		// ������ʼ��
		ApplicationContext data = new ApplicationContext(request, responese,
				session);
		// ��ȡservice����
		try {
			BaseService service = getService(actionNum);
			service.doBusiness(data);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//ModelAndView rtnData = new ModelAndView();
		//rtnData.setViewName("MyJsp");
		//rtnData.addAllObjects(data.getModel());
		return data.getModelAndView();
	}

	// ��ʼ��Ҫִ�е�service
	private BaseService getService(String serviceNum)
			throws InstantiationException, IllegalAccessException,
			ClassNotFoundException {
		BaseService ob = (BaseService) SpringContextUtil.getBean(serviceNum);
		return ob;
	}

}
