package com.topcheer.framework.dto;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;

/**
 * ��ͬ���ݲ���
 * 
 * @author cxl-pc
 * 
 */
public class ApplicationContext {

	HttpServletRequest request = null;
	HttpServletResponse responese = null;
	HttpSession session = null;
	Map<String, Object> model = null;
	ModelAndView modelAndView = null;

	public ApplicationContext(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) {
		this.request = request;
		this.responese = responese;
		this.session = session;
	}

	@SuppressWarnings("unchecked")
	public <T extends BaseDto> T getPara(Class<? extends BaseDto> c) {
		try {
			BaseDto dto = c.newInstance();
			Field[] fs = c.getDeclaredFields();
			for (Field f : fs) {
				String fNmae = f.getName();
				if (request.getParameter(fNmae) != null) {
					String[] values = request.getParameterValues(fNmae);
					f.setAccessible(true);
					if (values.length == 1) {
						f.set(dto, values[0]);
					} else {
						f.set(dto, values);
					}
					// TODO log it
				}
			}
			return (T) dto;
		} catch (InstantiationException e) {
			return null;
		} catch (IllegalAccessException e) {
			return null;
		}
	}

	public String getPara(String name) {
		return request.getParameter(name);
	}

	public String[] getParas(String name) {
		return request.getParameterValues(name);
	}

	@SuppressWarnings("unchecked")
	public Map<String, String> getPara() {
		return request.getParameterMap();
	}

	public <T extends BaseDto> void createResult(T dto, String result,
			String nextPage) {
		model = new HashMap<String, Object>();
		ModelAndView modelAndView = new ModelAndView();
		// 如果系统内部执行正确
		if ("success".equals(result)) {
			// 如果不需要传递参数
			if (dto != null) {
				Field[] fs = dto.getClass().getDeclaredFields();
				for (Field f : fs) {
					f.setAccessible(true);
					try {
						model.put(f.getName(), f.get(dto));
					} catch (IllegalArgumentException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// TODO log it
				}
			}
			modelAndView.addAllObjects(model);
			modelAndView.setViewName(nextPage);
		} else {
			modelAndView.setViewName("error");
		}
		this.modelAndView = modelAndView;
	}

	/**
	 * @return the modelAndView
	 */
	public ModelAndView getModelAndView() {
		return modelAndView;
	}

}
