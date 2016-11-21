package com.topcheer.framework.action;

import java.io.IOException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.topcheer.framework.dto.ApplicationContext;
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
	 * @throws Exception 
	 */
	@RequestMapping("commonAction")
	public ModelAndView doAction(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session,String userName) throws Exception {
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
	 * @throws Exception 
	 */
	@RequestMapping("commonAjax")
	@ResponseBody
	public Map<String, Object> doAjaxAction(HttpServletRequest request,
			HttpServletResponse responese) throws Exception {
		String actionNum = request.getParameter("actionNum");
		if (actionNum == null || "".equals(actionNum)) {

		}
		ApplicationContext data = new ApplicationContext(request, responese);
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
		return data.getMap();
	}

	/**
	 * 上传文件共同action
	 * 
	 * @param file
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("commonUploadFile")
	public ModelAndView uploadAction(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, HttpServletResponse responese,
			HttpSession session) throws Exception {
		String actionNum = request.getParameter("actionNum");
		if (actionNum == null || "".equals(actionNum)) {
			ModelAndView errorModel = new ModelAndView();
			errorModel.setViewName("error");
			return errorModel;
		}
		ApplicationContext data = new ApplicationContext(request, responese,
				session, file);
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
	 * 共同导出excel文件
	 * 
	 * @param request
	 * @param responese
	 * @param session
	 * @throws Exception 
	 */
	@RequestMapping("downLoadCommon")
	@ResponseBody
	public void downLoadAction(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) throws Exception {
		String actionNum = request.getParameter("actionNum");
		ApplicationContext data = new ApplicationContext(request, responese,
				session);
		try {
			IService service = getService(actionNum);
			service.doBusiness(data);
			ExcelCreate.createExcel(data.getExcelVo(), responese, "utf-8");
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (RowsExceededException e) {
			e.printStackTrace();
		} catch (WriteException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
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
		IService ob = (IService) SpringContextUtil.getBean(serviceNum);
		return ob;
	}

}
