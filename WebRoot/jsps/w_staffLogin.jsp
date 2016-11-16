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

<title>用户登录</title>

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
	<form action="commonAction" method="POST">
		<div align="center">
			编&nbsp;号：<input type="text" name="number" id="number1"><br /> 
			用户名：<input id="staffName">
			<input
				type="hidden" name="actionNum" value="w_staffLogin"><input type="submit"
				value="登录"><input type="button" onclick="staffSelect()"
				value="查询">
		</div>
	</form>
</body>
</html>
