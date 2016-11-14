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

<title>My JSP 'StaffManage.jsp' starting page</title>

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
	<h2 align="center">职工信息管理</h2>
	<form action="#">
		<table border=1 align="center" width="800">
			<tr>
				<td>编号</td>
				<td>姓名</td>
				<td>部门</td>
				<td>项目组名称</td>
				<td>职位</td>
				<td>操作</td>
			</tr>
			<tr>
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="#">详情</a><a href="#">删除</a></td>
			<tr>
		</table>
	</form>

</body>
</html>
