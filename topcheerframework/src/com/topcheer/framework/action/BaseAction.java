package com.topcheer.framework.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.topcheer.framework.dto.ApplicationContext;
import com.topcheer.test.service.MyService1;

@Controller
public class BaseAction{
	@RequestMapping("testAction")
	public ModelAndView  doAction(HttpServletRequest request,HttpServletResponse responese,HttpSession session) {
		
		if( request.getParameter("ActionNum") !=null){
			String actionNum = request.getParameter("ActionNum");
			
		}else{
			//TODO Throw actionnum is empty exption
		}
		
		ApplicationContext data = new ApplicationContext(request, responese, session);
		
		MyService1 myservice = new MyService1();
		myservice.doBusiness(data);
		
		ModelAndView rtnData = new ModelAndView();
		rtnData.setViewName("MyJsp");
		rtnData.addAllObjects(data.getModel());
		return rtnData;
	}

	
	
	
}
