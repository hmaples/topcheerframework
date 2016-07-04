package com.topcheer.framework.dto;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ApplicationContext {
	HttpServletRequest request = null;
	HttpServletResponse responese = null;
	HttpSession session = null;
	Map<String,Object> model = null;
	public ApplicationContext(HttpServletRequest request,HttpServletResponse responese,HttpSession session){
		this.request= request;
		this.responese = responese;
		this.session = session;
	}
	
	@SuppressWarnings("unchecked")
	public <T extends BaseDto> T getPara(Class<? extends BaseDto> c){
		
		try {
			BaseDto dto = c.newInstance();
			Field[] fs = c.getDeclaredFields();
			
			for(Field f : fs){
				String fNmae = f.getName();
				if(request.getParameter(fNmae)!=null){
					f.setAccessible(true);
					f.set(dto, request.getParameter(fNmae));
					// TODO log it
				}
			}
			return (T)dto;
		} catch (InstantiationException e) {
			return null;
		} catch (IllegalAccessException e) {
			return null;
		}
	}
	
	public String getPara(String name){
		return request.getParameter(name);
	}
	
	public Map<String,String> getPara(String[] names){
		Map<String,String> paraMap = new HashMap<String, String>();
		for(String name:names){
			//if(request.getParameterValues(name))
		}
		return null;
	}
	
	public <T extends BaseDto> void createMoel(T dto){
		model = new HashMap<String, Object>();
		Field[] fs = dto.getClass().getDeclaredFields();
		for(Field f :  fs){
			String fNmae = f.getName();
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

	/**
	 * @return the model
	 */
	public Map<String, Object> getModel() {
		return model;
	}

	/**
	 * @param model the model to set
	 */
	public void setModel(Map<String, Object> model) {
		this.model = model;
	}
	
}
