package com.topcheer.framework.action;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.framework.service.BaseService;
import com.topcheer.framework.service.IService;

@Controller
public class BaseAction {

	/**
	 * 共同action访问
	 * 
	 * @param request
	 * @param responese
	 * @param session
	 * @return
	 */
	@RequestMapping("commonAction")
	public ModelAndView doAction(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) {
		String actionNum = request.getParameter("actionNum");
		if (actionNum == null || "".equals(actionNum)) {
			ModelAndView errorModel = new ModelAndView();
			errorModel.setViewName("error");
			return errorModel;
		}
		ApplicationContext data = new ApplicationContext(request, responese,
				session);
		try {
			IService service = getService(actionNum);
			service.doBusiness(data);
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return data.getModelAndView();
	}

	/**
	 * 共同ajax访问
	 * 
	 * @param request
	 * @param responese
	 * @return
	 */
	@RequestMapping("commonAjax")
	@ResponseBody
	public Map<String, Object> doAjaxAction(HttpServletRequest request,
			HttpServletResponse responese) {
		Map<String, Object> map = new HashMap<String, Object>();
		return map;
	}

	/**
	 * 获取service对象
	 * 
	 * @param serviceNum
	 * @return
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws ClassNotFoundException
	 */
	private IService getService(String serviceNum)
			throws InstantiationException, IllegalAccessException,
			ClassNotFoundException {
		IService ob = (BaseService) SpringContextUtil.getBean(serviceNum);
		return ob;
	}

}
