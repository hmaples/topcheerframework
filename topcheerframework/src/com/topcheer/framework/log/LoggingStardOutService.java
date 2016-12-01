package com.topcheer.framework.log;

import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
/**
 * 
 * 类描述： 通过切面方式输出service日志
 * 创建者： lizq
 * 项目名称： WebProject
 * 创建时间： 2016-10-20 上午10:38:07
 * 版本号： v1.0
 */
@Component
@Aspect
public class LoggingStardOutService {
//	PlatformLog logger = PlatformLog.getPlatFormLog(IConstant.logWebPlatform);//WEB平台日志输出 
	Logger logger = LogWriter.getLogger("");
	String doClass ,doMethod,startTime, endTime ,costTime, functionDesc ;//日志模板输出必须字段
	static final String msg = "参数";
	/**
	 * 方法描述 :日志切面环绕输出,用于检测Services业务逻辑层下的日志输出 
	 * 创建者：lizq 
	 * 项目名称： WebProject
	 * 类名： LoggingStardOutService.java
	 * 版本： v1.0
	 * 创建时间： 2016-10-18 下午3:32:42
	 * @param joinPoint
	 * @return
	 * @throws Throwable Object
	 */
	@Around("execution(* com.topcheer.STSService.service.*(..))")
	public Object logAround(ProceedingJoinPoint joinPoint) throws Throwable{
		System.out.println("近不近");
		Object[] str = (Object[]) joinPoint.getArgs();//获取传入参数
//		HttpSession session = WebContextHolder.INSTANCE.getSession();
//		UserInfo userInfo = (UserInfo) session.getAttribute(IConstant.userInfo);
		String doClass = joinPoint.getTarget().toString();//获取处理类名
		Signature methodName = joinPoint.getSignature();//方法名
		String doMethod = methodName.toString();
		
		String userId=null ,userName=null;
//		if(userInfo != null){
//			userId = "test";
//			userName = "test";
//		}
		StringBuffer sBuf = new StringBuffer();
		if(str!=null){
			int len = str.length;
			for (int i =0 ;i<len;i++) {
				sBuf.append(msg).append(i+"=").append(str[i]);
			}
		}
		long start = System.currentTimeMillis();
		Object result = joinPoint.proceed();
		if(result ==null){
			result = "";
		}
		long end = System.currentTimeMillis();
//		logger.putFieldToMap(userId,userName, doClass, doMethod, sBuf.toString(), result.toString(), String.valueOf(start), String.valueOf(end), String.valueOf(end-start), "业务逻辑处理类");
//		logger.info(logger.getLoggerJson());
		return result;
	}
	/**
	 * 方法描述 : 异常日志输出
	 * 创建者：zengqun 
	 * 项目名称： WebPorject
	 * 类名： LoggingAspect.java
	 * 版本： v1.0
	 * 创建时间： 2016年8月29日 下午7:53:54
	 * @param exception void
	 */
	@AfterThrowing(pointcut = "execution(* com.spdb.services..*.*(..))",
			throwing="exception")
	public void logAfterThrowing(Exception exception){
		logger.error("处理方法出现异常", exception);
	}
	
	
	public static void main(String[] args){
		String str = null;
		System.out.println(str);
		for(int i=0;i<150000;i++){
			StringBuffer sBuf = new StringBuffer("abcdefghijk");
			System.out.println(sBuf.delete(0, sBuf.length()));
		}
		for(int i=0;i<150000;i++){
			StringBuffer sBuf = new StringBuffer("abcdefghijk");
			sBuf.setLength(0);
			System.out.println(sBuf.toString());
		}
	}
}
