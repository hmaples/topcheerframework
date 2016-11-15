<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>问卷调查一</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/s_testOneSubmit.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>

  </head>


  <body>
    <h2 align="center">调查问卷一</h2>
    <h3 align="right">
    交付三部:
    <a href="jsps/s_testOne.jsp">耿建锋</a><br/>
    <a href="jsps/s_testOne.jsp">登出</a>
    </h3>
	<form action="#">
		<table border=1 align="center" width=1000>
			<tr>
				<td align="center" width=400>部门</td>
				<td align="center" width=400>姓名</td>
				<td align="center" width=400>评分</td>
				<td align="center" width=400>依据</td>
			</tr>
			<tr>
				<td align="center">交付三部</td>
				<td align="center" >金晓钰</td>
				<td align="center">
				<input type="radio" name="score1" value="#">1星
				<input type="radio" name="score1" value="#">2星
				<input type="radio" name="score1" value="#">3星
				<input type="radio" name="score1" value="#">4星
				<input type="radio" name="score1" value="#">5星
				</td>
				<td align="center">
				<textarea id="textarea1" name="suggestion1"  style="width:400px;height:100px;"></textarea>
				</td>
			</tr>
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>夏昆</td>
			<td align="center" width=1500>
			<input type="radio" name="score2" value="#">1星
			<input type="radio" name="score2" value="#">2星
			<input type="radio" name="score2" value="#">3星
			<input type="radio" name="score2" value="#">4星
			<input type="radio" name="score2" value="#">5星
			</td>
			<td align="center">
			<textarea name="suggestion2" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
		<tr>
		<td colspan=4>注意:评分后必须填写评分依据,填写时请不要提及部门、项目组、人名等可能泄露信息的内容</td>
		</tr>
		
		<tr>
		<td align="center" colspan=4>
		<input type="button" onclick="testone()" value="提交" style="font-size:100px" >
		<input type="reset" value="重置" style="font-size:100px" >
		</td>
		</tr>
			

		</table>
	</form>
  </body>
</html>
