<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'questionnaireFirst.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">


h2{
font-size:30px;
}
</style>
  </head>
  
  <body style = "background-color:F5F6EB;font-family : Microsoft JhengHei;">
   <div style = "font-size:25px;"align = "center"> <h2>欢迎进入问卷调查系统</h2> 
   <form method="post" action="jsps/questionnaire.jsp">
     <b>请选择要填写的问卷</b>
    <table style = "font-size:23px;font-family: 微软雅黑; text-align: center; width: 655px; height: 150px;">
    <tr style = "width:300px"><td align ="center">问卷名称</td>
        <td align ="center">调查期限</td>
        <td align ="center">选择</td>
    </tr>
    <tr >
        <td>上海天正员工满意度调查问卷</td>
        <td>2016.01.1-2016.12.31</td>
        <td align = "center"><input  value="开始填写"type = "submit"/></td>
        
    </tr>
    
    </table>
    </form>
    
   </div> 
  </body>
</html>
