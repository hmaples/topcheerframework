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
	<form action="jsps/questionOne.jsp" id="test1">
		<table border=1 align="center" width=70%>
			<tr>
				<td align="center" width=20%>姓名</td>
				<td align="center">评分</td>
				<td align="center">依据</td>
			</tr>
			<tr>
				<td align="center" width=20%>冯军</td>
				<td align="center" width=30%>
				<input type="radio" name="score01" value="#">5 
				<input type="radio" name="score01" value="#">4
				<input type="radio" name="score01" value="#">3 
				<input type="radio" name="score01" value="#">2
				<input type="radio" name="score01" value="#">1
				</td>
				<td align="center"><textarea id="testarea01" rows="5" cols="70"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center" width=20%>耿建锋<br/>2016-01-01</td>
				<td align="center" width=30%>
				<input type="radio" name="score02" value="#">5 
				<input type="radio" name="score02" value="#">4
				<input type="radio" name="score02" value="#">3 
				<input type="radio" name="score02" value="#">2
				<input type="radio" name="score02" value="#">1
				</td>
				<td align="center"><textarea id="testarea01" rows="5" cols="70"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center" width=20%>金晓钰<br/>2016-01-01</td>
				<td align="center" width=30%>
				<input type="radio" name="score03" value="#">5 
				<input type="radio" name="score03" value="#">4
				<input type="radio" name="score03" value="#">3 
				<input type="radio" name="score03" value="#">2
				<input type="radio" name="score03" value="#">1
				</td>
				<td align="center"><textarea id="testarea01" rows="5" cols="70"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center" width=20%>夏昆<br/>2016-01-01</td>
				<td align="center" width=30%>
				<input type="radio" name="score04" value="#">5 
				<input type="radio" name="score04" value="#">4
				<input type="radio" name="score04" value="#">3 
				<input type="radio" name="score04" value="#">2
				<input type="radio" name="score04" value="#">1
				</td>
				<td align="center"><textarea id="testarea01" rows="5" cols="70"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td colspan="3">问卷说明：选择评分时则必须在文本框输入评分依据、、、</td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="reset" value="重置">
					<input type="button" onclick="test1()" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>
