<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'window_open.jsp' starting page</title>

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
<h2 align="center">问卷页面统计</h2>
	<table border=1 align="center" width=70%>
		<tr align="center">
			<td rowspan="7">王伟</td>
			<td>问卷一</td>
			<td><a href="jsps/w_questionOne.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷二</td>
			<td><a href="jsps/w_testTwo.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷一结果</td>
			<td><a href="jsps/w_resultTestOne.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷二结果</td>
			<td><a href="jsps/w_resultTestTwo.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>试卷管理</td>
			<td><a href="jsps/w_questionnaireManage.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>试题管理</td>
			<td><a href="jsps/w_issueManage.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>职员管理</td>
			<td><a href="jsps/w_staffManage.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td rowspan="3">马琦睿</td>
			<td>问卷一</td>
			<td><a href="jsps/m_issueInfo_1.html">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷二</td>
			<td><a href="jsps/m_issueInfo_2.html">链接</a></td>
		</tr>
		<tr align="center">
			<td>职员管理</td>
			<td><a href="jsps/m_staffInfoPage.html">链接</a></td>
		</tr>
		
		<tr align="center">
			<td rowspan="3">沈丞恭</td>
			<td>问卷一</td>
			<td><a href="jsps/s_questionnaireOne.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷二</td>
			<td><a href="jsps/s_questionnaireTwo.jsp">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷一结果</td>
			<td><a href="jsps/s_questionnaireOneResult.jsp">链接</a></td>
		</tr>
		
		<tr align="center">
			<td rowspan="3">廖旭</td>
			<td>问卷一</td>
			<td><a href="jsps/l_quesweb1.html">链接</a></td>
		</tr>
		<tr align="center">
			<td>问卷二</td>
			<td><a href="jsps/l_quesweb2.html">链接</a></td>
		</tr>
		<tr align="center">
			<td>职员管理</td>
			<td><a href="jsps/l_staffInfo.html">链接</a></td>
		</tr>




	</table>
</body>
</html>
