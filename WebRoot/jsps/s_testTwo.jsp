<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>问卷调查二</title>
    
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
    <h2 align="center">调查问卷二</h2>
    <h3 align="right">
    交付三部:
    <a href="jsps/s_testTwo.jsp">耿建锋</a><br/>
    <a href="jsps/s_testTwo.jsp">登出</a>
    </h3>
    <form action="#">
    		<table border=1 align="center" width="1000">
    			<tr>
    				<td align="center" width=800>项目</td>
    				<td align="center" width=800>如何做</td>
    			</tr>
    			<tr>
    			<td align="center">开发交付体系</td>
    			<td align="center"><textarea name="howtodo1" style="width:800px;height:100px;"></textarea>
    			</td>
    			</tr>
    			<tr>
    			<td align="center">为客户创造价值</td>
    			<td align="center"><textarea name="howtodo2" style="width:800px;height:100px;"></textarea>
    			</td>
    			</tr>
    			<tr>
    			<td align="center">为员工创造机会</td>
    			<td align="center"><textarea name="howtodo3" style="width:800px;height:100px;"></textarea>
    			</td>
    			</tr>
    			
    			<tr>
    			<td colspan=2>注意:如何做可分成如下几块内容填写<br/>
    			a)做的好的是什么<br/>
    			b)做的好的怎么做的更好<br/>
    			c)做的不好的是什么<br/>
    			d)做的不好怎么做可以做的更好<br/>
    			e)那些没有做的可以做<br/>
    			f)哪些没有做的可以做得好
   			</td>
    			</tr>
    			
    			<tr>
    			<td align="center" colspan=3>
    			<input type="submit" value="提交" style="font-size:100px">
    			<input type="reset" value="重置" style="font-size:100px">
    		</table>
    </form>
  </body>
</html>
