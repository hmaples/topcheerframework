<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>问卷调查结束</title>
    <link rel="shortcut icon" type="image/x-icon" href="/topcheerframework/images/favicon.ico" media="screen" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style = "background-color:F5F6EB;">
  <div style="height:250px;padding-top:10%;text-align:center;font-family:微软雅黑;font-size:35px;color:#333333;"> <b>问卷填写完毕，感谢您的配合，您填写的信息将以匿名形式反馈给人事部门</b></div>
  <div style = "text-align:center"><a href="javascript:window.opener=null;window.open('','_self');window.close();"><input type = "button" value = "关闭"/></a></div>

  
  </body>
</html>
