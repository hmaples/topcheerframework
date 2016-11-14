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

<title>调查问卷二</title>

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
	<form action="#">
		<table border=1 align="center" width=800>
			<tr>
				<td align="center" width=300>项目</td>
				<td align="center">如何做</td>
			</tr>
			<tr>
				<td align="center">开发交付体系</td>
				<td align="center"><textarea rows="5" cols="80"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center">为客户创造价值为员工创造机会</td>
				<td align="center"><textarea rows="5" cols="80"
						name="evaluate02"></textarea></td>
			</tr>
			<tr>
				<td align="center">为员工创造机会</td>
				<td align="center"><textarea rows="5" cols="80"
						name="evaluate02"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><h5>问卷说明：上述“如何做”列填写时，可以分成如下几块内容填写，不做强制要求：做得好的是什么;做得好的怎么做可以做得更好;做得不好的是什么;做得不好的怎么做可以做得好;哪些没有做的可以做;那些没有做的怎么做可以做得好~~~
					</h5></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="reset" value="重置" />
					<input type="submit" value="提交" /></td>
			</tr>
		</table>
	</form>

</body>
</html>
