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

<title>调查问卷入口</title>
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
	<form action="jsps/w_testOne.jsp">
		<input type="submit" value="问卷一" />
	</form>
	<form action="jsps/w_testTwo.jsp">
		<input type="submit" value="问卷二" />
	</form>
	<form action="jsps/w_resultTestOne.jsp">
		<input type="submit" value="问卷一结果统计" />
	</form>
	<form action="jsps/w_resultTestTwo.jsp">
		<input type="submit" value="问卷二结果统计" />
	</form>
	<form action="jsps/w_staffManage.jsp">
		<input type="submit" value="职员信息管理" />
	</form>
	<form action="jsps/w_issueManage.jsp">
		<input type="submit" value="题目管理" />
	</form><form action="jsps/w_questionnaireManage.jsp">
		<input type="submit" value="问卷管理" />
	</form>
</body>
</html>