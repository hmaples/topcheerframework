package com.topcheer.framework.dto;

import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
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
	MultipartFile file = null;
	ExcelVo excelVo = null;

	public ApplicationContext(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session) {
		this.request = request;
		this.responese = responese;
		this.session = session;
	}

	public ApplicationContext(HttpServletRequest request,
			HttpServletResponse responese, HttpSession session,
			MultipartFile file) {
		this.request = request;
		this.responese = responese;
		this.session = session;
		this.file = file;
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
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			BaseDto dto = c.newInstance();
			Field[] fs = c.getDeclaredFields();
			for (Field f : fs) {
				String fNmae = f.getName();
				System.out.println(f.getType().getName());
				if (request.getParameter(fNmae) != null) {
					String[] values = request.getParameterValues(fNmae);
					f.setAccessible(true);
					if (values.length == 1) {
						if (f.getGenericType().toString().equals(
								"class java.lang.String")) {
							f.set(dto, values[0]);
						} else if (f.getGenericType().toString().equals(
								"class java.lang.Integer")) {
							f.set(dto, new Integer(Integer.parseInt(values[0])));
						} else if (f.getGenericType().toString().equals(
								"int")) {
							f.set(dto, Integer.parseInt(values[0]));
						} else if (f.getGenericType().toString().equals(
								"double")) {
							f.set(dto, Double.parseDouble(values[0]));
						} else if (f.getGenericType().toString().equals(
								"class java.lang.Double")) {
							f.set(dto, new Double(Double.parseDouble(values[0])));
						} else if (f.getGenericType().toString().equals(
								"class java.lang.Boolean")) {
							f.set(dto, Boolean.parseBoolean(values[0]));
						} else if (f.getGenericType().toString().equals(
								"class java.util.Date")) {
							if(values[0].length()==10){
								f.set(dto, df.parse(values[0]));
							}
							else{
								f.set(dto, sdf.parse(values[0]));
							}
						} else if (f.getGenericType().toString().equals(
								"class java.lang.Short")) {
							f.set(dto, Short.parseShort(values[0]));
						} else if (f.getGenericType().toString().equals(
								"long")) {
							f.set(dto, Long.parseLong(values[0]));
						} else if (f.getGenericType().toString().equals(
								"class java.lang.Long")) {
							f.set(dto, new Long(Long.parseLong(values[0])));
						}
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
		} catch (Exception e) {
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
	 * @return //
	 */
	// @SuppressWarnings("unchecked")
	// public Map<String, String> getPara() {
	// return request.getParameterMap();
	// }

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
	 * 创建共同结果对象
	 * 
	 * @param <T>
	 * @param dto
	 * @param result
	 * @param nextPage
	 */
	public void createMapResult(Map<String, Object> model, String result,
			String nextPage) {
		ModelAndView modelAndView = new ModelAndView();
		// 如果系统内部执行正确
		if ("success".equals(result)) {
			modelAndView.addAllObjects(model);
			modelAndView.setViewName(nextPage);
		} else {
			modelAndView.setViewName("error");
		}
		this.modelAndView = modelAndView;
	}

	/**
	 * 创建导出excel结果对象
	 * 
	 * @param excelVo
	 * @param responese
	 */
	public void createExcelExport(ExcelVo excelVo) {
		this.excelVo = excelVo;
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

	/**
	 * @return the file
	 */
	public MultipartFile getFile() {
		return file;
	}

	/**
	 * @return the request
	 */
	public HttpServletRequest getRequest() {
		return request;
	}

	/**
	 * @return the excelVo
	 */
	public ExcelVo getExcelVo() {
		return excelVo;
	}

}
