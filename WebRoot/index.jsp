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
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/topcheerframework/js/w_result.js"></script>
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
  		<input type="hidden" name="questionnaireID" id="questionnaireID" value="3"> 
	<input type="submit" value="去问卷调查" onclick="staffIdSelect()" />
  	</form>
    <form action="commonAction.do"  method="post">
  		<input type="hidden" name="actionNum" value = "mquestion">
  		
	<input type="submit" value="maqirui" />
  	</form>
  	
  </body>
</html>
