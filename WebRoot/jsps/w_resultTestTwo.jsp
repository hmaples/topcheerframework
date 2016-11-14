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

<title>My JSP 'resultTestTwo.jsp' starting page</title>

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
	<h2 align="center">调查问卷二结果</h2>
	<table align="center" width="800" border="1">
		<tr>
			<td align="center" width="200">项目</td>
			<td align="center">如何做</td>
		</tr>
		<tr>
			<td rowspan="5">怎样做的更好？</td>
			<td>1怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？</td>
		</tr>
		<tr>
			<td>1怎样做的更好？1怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？怎样做的更好？</td>
		</tr>
		<tr>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
		</tr>
		<tr>
			<td>5</td>
		</tr>
	</table>
</body>
</html>
