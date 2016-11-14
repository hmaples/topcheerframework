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

<title>My JSP 'Test2.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="/topcheerframework/js/w_testOne.js"></script>
<script type="text/javascript" src="/topcheerframework/js/jquery-1.9.1.js"></script>

</head>

<body>
	<h2 align="center">调查问卷一</h2>
	<form action="#" id="test1">
		<table border=1 align="center" width=800>
			<tr>
				<td align="center" width=100>姓名</td>
				<td align="center">评分</td>
				<td align="center">依据</td>
			</tr>
			<tr>
				<td align="center" width=100>one</td>
				<td align="center" width=300>你认为one的人格魅力是？<br /> 
				<input type="radio" name="score01" value="#">9 
				<input type="radio" name="score01" value="#">8
				<input type="radio" name="score01" value="#">7 
				<input type="radio" name="score01" value="#">6 
				</td>
				<td align="center"><textarea id="testarea01" rows="5" cols="70"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center" width=100>two</td>
				<td align="center" width=300>你认为two的人格魅力是？<br /> <input
					type="radio" name="score02" value="#">9 <input type="radio"
					name="score02" value="#">7 <input type="radio"
					name="score02" value="#">5 <input type="radio"
					name="score02" value="#">3
				</td>
				<td align="center"><textarea rows="5" cols="70"
						name="evaluate02"></textarea></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="reset" value="重置">
					<input type="button" onclick="test1()" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>
