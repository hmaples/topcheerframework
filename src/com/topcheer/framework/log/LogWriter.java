package com.topcheer.framework.log;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.log4j.Logger;
import org.apache.log4j.Priority;
import org.apache.log4j.xml.DOMConfigurator;

/**
 * 类型说明：异步日志输出器，框架提供了Action,Business,Dao,WebService,ErrorSQL四个日志输出器，用于各层日志信息输出
 *  ErrorSQL：操作数据库发生错误产生的日志
 */
public class LogWriter {

	private static boolean isInited = false;
	
	private static Logger logger_plat = getLogger("Plat");

	private static Logger logger_Action = getLogger("Action");

	private static Logger logger_Business = getLogger("Business");
	
	private static Logger logger_Dao = getLogger("Dao");

	private static Logger logger_WebService = getLogger("WebService");

	private static Logger logger_ErrorSQL = getLogger("ErrorSQL");

	private static String caller = "com.topcheer.framework.component.log.LogWriter";

	public static Logger getLogger(String name) {
		boolean flag = initConfigure();
		if (flag) {
			Logger logger = Logger.getLogger(name);
			return logger;
		} else {
			return null;
		}
	}

	/**
	 * 根据配置文件配置日志记录器	 * 
	 * @return 如果成功配置了日志记录参数返回true ,否则返回false
	 */
	private static boolean initConfigure() {
		if (isInited == false) {
			// 加载配置文件
		 URL filePath = getFilePath("log4j.xml");
			if (filePath != null) {
				// 根据配置文件设置日志记录器参数				DOMConfigurator.configure(filePath);
				isInited = true;
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}

	/**
	 * 本地资源记载器，用于加载本地配置文件
	 * 
	 * @return 如果成功返回一个本地资源加载器
	 */
	private static ClassLoader getClassLoader() {
		ClassLoader classLoader = Thread.currentThread()
				.getContextClassLoader();

		if (classLoader == null) {
			classLoader = LogWriter.class.getClassLoader();
		}
		return classLoader;
	}
	
	/**
	 * 功能概述：按照搜索路径获取文件，搜索顺序如下：<br>
	 *          1,应用程序所在目录<br>
	 *          2,应用程序ClassPath所在目录<br>
	 *          3,当前类所在目录<br>
	 * @param String fileName 文件名称
	 * @return java.io.File
	 */
	private static URL getFilePath(String fileName){
		File configFile = new File(System.getProperty("user.dir")+"/"+fileName);//应用程序所在目录		if(!configFile.exists()){
			URL url = getClassLoader().getResource(fileName);//应用程序ClassPath所在目录			if(url==null){
				url = LogWriter.class.getResource(fileName);//当前类所在目录				
			}
			return url;
		}else{
			try {
				return configFile.toURI().toURL();
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		}
		
	}

	public static String getExceptionStack(Throwable e){
		String causeMessage = e.getClass().getSimpleName()+": "+e.getMessage();
		StackTraceElement[] eles = e.getStackTrace();
		for(int i=0;i<eles.length;i++){
			StackTraceElement ele = eles[i];
			causeMessage+="\r\n        at "+ele.getClassName()+"."+ele.getMethodName()+"("+ele.getFileName()+":"+ele.getLineNumber()+")";
		}
		Throwable cause = e.getCause();
		if(cause!=null){
			causeMessage+="\r\n"+"Caused by: "+getExceptionStack(cause);
			return causeMessage;
		}
		return causeMessage;
	}
	
	// 平台模块日志
	public static boolean isPlatDebugEnabled() {
		return logger_plat.isDebugEnabled();
	}

	public static boolean isPlatWarnEnabled() {
		return logger_plat.isEnabledFor(Priority.WARN);
	}

	public static boolean isPlatErrorEnabled() {
		return logger_plat.isEnabledFor(Priority.ERROR);
	}

	public static boolean isPlatInfoEnabled() {
		return logger_plat.isInfoEnabled();
	}
	
	public static void platDebug(String msg) {
		logger_plat.log(caller, Priority.DEBUG, msg, null);
	}

	public static void platDebug(String msg, Throwable cause) {
		logger_plat.log(caller, Priority.DEBUG, msg, cause);
	}

	public static void platInfo(String msg) {
		logger_plat.log(caller, Priority.INFO, msg, null);
	}

	public static void platInfo(String msg, Throwable cause) {
		logger_plat.log(caller, Priority.INFO, msg, cause);
	}

	public static void platWarn(String msg) {
		logger_plat.log(caller, Priority.WARN, msg, null);
	}

	public static void platWarn(String msg, Throwable cause) {
		logger_plat.log(caller, Priority.WARN, msg, cause);
	}

	public static void platError(String msg) {
		logger_plat.log(caller, Priority.ERROR, msg, null);
	}

	public static void platError(String msg, Throwable cause) {
		logger_plat.log(caller, Priority.ERROR, msg, cause);
	}

	public static void platFatal(String msg) {
		logger_plat.log(caller, Priority.FATAL, msg, null);
	}

	public static void platFatal(String msg, Throwable cause) {
		logger_plat.log(caller, Priority.FATAL, msg, cause);
	}
	
	//Action层日志
	public static boolean isActionDebugEnabled() {
		return logger_Action.isDebugEnabled();
	}

	public static boolean isActionWarnEnabled() {
		return logger_Action.isEnabledFor(Priority.WARN);
	}

	public static boolean isActionErrorEnabled() {
		return logger_Action.isEnabledFor(Priority.ERROR);
	}

	public static boolean isActionInfoEnabled() {
		return logger_Action.isInfoEnabled();
	}

	public static void actionDebug(String msg) {
		logger_Action.log(caller, Priority.DEBUG, msg, null);
	}

	public static void actionDebug(String msg, Throwable cause) {
		logger_Action.log(caller, Priority.DEBUG, msg, cause);
	}

	public static void actionInfo(String msg) {
		logger_Action.log(caller, Priority.INFO, msg, null);
	}

	public static void actionInfo(String msg, Throwable cause) {
		logger_Action.log(caller, Priority.INFO, msg, cause);
	}

	public static void actionWarn(String msg) {
		logger_Action.log(caller, Priority.WARN, msg, null);
	}

	public static void actionWarn(String msg, Throwable cause) {
		logger_Action.log(caller, Priority.WARN, msg, cause);
	}
	
	public static void actionError(String msg) {
		logger_Action.log(caller, Priority.ERROR, msg, null);
	}

	public static void actionError(String msg, Throwable cause) {
		logger_Action.log(caller, Priority.ERROR, msg, cause);
	}

	public static void actionFatal(String msg) {
		logger_Action.log(caller, Priority.FATAL, msg, null);
	}

	public static void actionFatal(String msg, Throwable cause) {
		logger_Action.log(caller, Priority.FATAL, msg, cause);
	}

	// Business层日志
	public static boolean isBusinessDebugEnabled() {
		return logger_Business.isDebugEnabled();
	}

	public static boolean isBusinessWarnEnabled() {
		return logger_Business.isEnabledFor(Priority.WARN);
	}

	public static boolean isBusinessErrorEnabled() {
		return logger_Business.isEnabledFor(Priority.ERROR);
	}

	public static boolean isBusinessInfoEnabled() {
		return logger_Business.isInfoEnabled();
	}
	
	public static void businessDebug(String msg) {
		logger_Business.log(caller, Priority.DEBUG, msg, null);
	}

	public static void businessDebug(String msg, Throwable cause) {
		logger_Business.log(caller, Priority.DEBUG, msg, cause);
	}

	public static void businessInfo(String msg) {
		logger_Business.log(caller, Priority.INFO, msg, null);
	}

	public static void businessInfo(String msg, Throwable cause) {
		logger_Business.log(caller, Priority.INFO, msg, cause);
	}

	public static void businessWarn(String msg) {
		logger_Business.log(caller, Priority.WARN, msg, null);
	}

	public static void businessWarn(String msg, Throwable cause) {
		logger_Business.log(caller, Priority.WARN, msg, cause);
	}

	public static void businessError(String msg) {
		logger_Business.log(caller, Priority.ERROR, msg, null);
	}

	public static void businessError(String msg, Throwable cause) {
		logger_Business.log(caller, Priority.ERROR, msg, cause);
	}

	public static void businessFatal(String msg) {
		logger_Business.log(caller, Priority.FATAL, msg, null);
	}

	public static void businessFatal(String msg, Throwable cause) {
		logger_Business.log(caller, Priority.FATAL, msg, cause);
	}
	
	//Dao层日志
	public static boolean isDaoDebugEnabled() {
		return logger_Dao.isDebugEnabled();
	}

	public static boolean isDaoWarnEnabled() {
		return logger_Dao.isEnabledFor(Priority.WARN);
	}

	public static boolean isDaoErrorEnabled() {
		return logger_Dao.isEnabledFor(Priority.ERROR);
	}

	public static boolean isDaoInfoEnabled() {
		return logger_Dao.isInfoEnabled();
	}

	public static void daoDebug(String msg) {
		logger_Dao.log(caller, Priority.DEBUG, msg, null);
	}

	public static void daoDebug(String msg, Throwable cause) {
		logger_Dao.log(caller, Priority.DEBUG, msg, cause);
	}

	public static void daoInfo(String msg) {
		logger_Dao.log(caller, Priority.INFO, msg, null);
	}

	public static void daoInfo(String msg, Throwable cause) {
		logger_Dao.log(caller, Priority.INFO, msg, cause);
	}

	public static void daoWarn(String msg) {
		logger_Dao.log(caller, Priority.WARN, msg, null);
	}

	public static void daoWarn(String msg, Throwable cause) {
		logger_Dao.log(caller, Priority.WARN, msg, cause);
	}

	public static void daoError(String msg) {
		logger_Dao.log(caller, Priority.ERROR, msg, null);
	}

	public static void daoError(String msg, Throwable cause) {
		logger_Dao.log(caller, Priority.ERROR, msg, cause);
	}

	public static void daoFatal(String msg) {
		logger_Dao.log(caller, Priority.FATAL, msg, null);
	}

	public static void daoFatal(String msg, Throwable cause) {
		logger_Dao.log(caller, Priority.FATAL, msg, cause);
	}
	
	public static boolean isWebServiceDebugEnabled() {
		return logger_WebService.isDebugEnabled();
	}

	public static boolean isWebServiceWarnEnabled() {
		return logger_WebService.isEnabledFor(Priority.WARN);
	}

	public static boolean isWebServiceErrorEnabled() {
		return logger_WebService.isEnabledFor(Priority.ERROR);
	}

	public static boolean isWebServiceInfoEnabled() {
		return logger_WebService.isInfoEnabled();
	}
	
	public static void webServiceDebug(String msg) {
		logger_WebService.log(caller, Priority.DEBUG, msg, null);
	}

	public static void webServiceDebug(String msg, Throwable cause) {
		logger_WebService.log(caller, Priority.DEBUG, msg, cause);
	}

	public static void webServiceInfo(String msg) {
		logger_WebService.log(caller, Priority.INFO, msg, null);
	}

	public static void webServiceInfo(String msg, Throwable cause) {
		logger_WebService.log(caller, Priority.INFO, msg, cause);
	}

	public static void webServiceWarn(String msg) {
		logger_WebService.log(caller, Priority.WARN, msg, null);
	}

	public static void webServiceWarn(String msg, Throwable cause) {
		logger_WebService.log(caller, Priority.WARN, msg, cause);
	}

	public static void webServiceError(String msg) {
		logger_WebService.log(caller, Priority.ERROR, msg, null);
	}

	public static void webServiceError(String msg, Throwable cause) {
		logger_WebService.log(caller, Priority.ERROR, msg, cause);
	}

	public static void webServiceFatal(String msg) {
		logger_WebService.log(caller, Priority.FATAL, msg, null);
	}

	public static void webServiceFatal(String msg, Throwable cause) {
		logger_WebService.log(caller, Priority.FATAL, msg, cause);
	}

	// ErrorSQL模块用于记录执行错误的SQL日志
	public static boolean isErrorSQLEnabled() {
		return logger_ErrorSQL.isEnabledFor(Priority.ERROR);
	}

	public static void SQLError(String msg, Throwable cause) {
		logger_ErrorSQL.log(caller, Priority.ERROR, msg, cause);
	}
	
}
