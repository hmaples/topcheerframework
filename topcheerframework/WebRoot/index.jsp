<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
  	<form action="commonAction"  method="post">
  		<input type="hidden" name="actionNum" value = "loginSub">
  		<input type="hidden" name="userName" value="hmaple">
  		<input type="hidden" name="passWord" value="123456">
  		<input type="submit" value="点击提交">
  	</form>
    This is my JSP page. <br>
    <form action="commonAction"  method="post">
  		<input type="hidden" name="actionNum" value = "registerService">
  		<input type="submit" value="点击去注册">
  	</form>
  	<br>
  	<form action="commonAction"  method="post">
  		<input type="hidden" name="actionNum" value = "gotoAjax">
  		<input type="submit" value="点击去ajax页面">
  	</form>
  <!-- 问卷调查 -->
  	<form action="commonAction"  method="post">
  		<input type="hidden" name="actionNum" value = "questionSubmitService">
  		<input type="submit" value="点击去问卷调查页面">
  	</form>
  	
  </body>
</html>
