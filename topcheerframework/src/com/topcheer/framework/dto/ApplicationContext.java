package com.topcheer.framework.dto;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;

/**
 * 共同参数
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
	Map<String, Object> map = null;

	public ApplicationContext(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) {
		this.request = request;
		this.responese = responese;
		this.session = session;
	}

	public ApplicationContext(HttpServletRequest request,
			HttpServletResponse responese) {
		this.request = request;
		this.responese = responese;
	}

	/**
	 * 适用于form表单提交获取参数对象,支持数组
	 * 
	 * @param <T>
	 * @param c
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <T extends BaseDto> T getPara(Class<? extends BaseDto> c) {
		try {
			BaseDto dto = c.newInstance();
			Field[] fs = c.getDeclaredFields();
			for (Field f : fs) {
				String fNmae = f.getName();
				System.out.println(f.getType().getName());
				if (request.getParameter(fNmae) != null) {
					String[] values = request.getParameterValues(fNmae);
					f.setAccessible(true);
					if (values.length == 1) {
						f.set(dto, values[0]);
					} else {
						f.set(dto, values);
					}
				}
			}
			return (T) dto;
		} catch (InstantiationException e) {
			return null;
		} catch (IllegalAccessException e) {
			return null;
		}
	}

	/**
	 * 获取单个属性值
	 * 
	 * @param name
	 * @return
	 */
	public String getPara(String name) {
		return request.getParameter(name);
	}

	/**
	 * 获取数组属性值
	 * 
	 * @param name
	 * @return
	 */
	public String[] getParas(String name) {
		return request.getParameterValues(name);
	}

	/**
	 * 获取map属性值
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Map<String, String> getPara() {
		return request.getParameterMap();
	}

	/**
	 * 创建共同结果对象
	 * 
	 * @param <T>
	 * @param dto
	 * @param result
	 * @param nextPage
	 */
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
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						e.printStackTrace();
					}
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
	 * 获取结果对象
	 * 
	 * @return the modelAndView
	 */
	public ModelAndView getModelAndView() {
		return modelAndView;
	}

	/**
	 * @return the map
	 */
	public Map<String, Object> getMap() {
		return map;
	}

	/**
	 * @param map
	 *            the map to set
	 */
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

}
