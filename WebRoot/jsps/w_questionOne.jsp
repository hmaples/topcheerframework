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

<title>部门管理人员考评表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="/topcheerframework/js/w_issue.js"></script>
<script type="text/javascript"
	src="/topcheerframework/js/jquery-1.9.1.js"></script>

</head>

<body>
	<h1 align="center">部门管理人员考评表</h1>
	<form>
		<table align="center" width=80%>
			<tr>
				<td colspan="3"><b>此问卷是匿名问卷,评分依据不要提及部门、项目组、人名等信息！</b>
				</td>
			</tr>
		</table>
		<table border=1 align="center" width=80%>
			<tr height=40px>
				<td align="center" width=15%><b>姓名</b></td>
				<td align="center" width=30%><b>评分</b></td>
				<td align="center"><b>依据</b></td>
			</tr>
			<tr>
				<td align="center">冯军</td>
				<td align="center"><input type="radio" name="score01"
					value="#">5 <input type="radio" name="score01" value="#">4
					<input type="radio" name="score01" value="#">3 <input
					type="radio" name="score01" value="#">2 <input type="radio"
					name="score01" value="#">1</td>
				<td align="center"><textarea id="textarea01" style="width:100%;height:60px"
						name="evaluate01"></textarea></td>
			</tr>
			<tr>
				<td align="center">耿建锋</td>
				<td align="center"><input type="radio" name="score02"
					value="#">5 <input type="radio" name="score02" value="#">4
					<input type="radio" name="score02" value="#">3 <input
					type="radio" name="score02" value="#">2 <input type="radio"
					name="score02" value="#">1</td>
				<td align="center"><textarea id="textarea02" style="width:100%;height:60px"
						name="evaluate01"></textarea></td>

			</tr>
			<tr>
				<td align="center">金晓钰</td>
				<td align="center"><input type="radio" name="score03"
					value="#">5 <input type="radio" name="score03" value="#">4
					<input type="radio" name="score03" value="#">3 <input
					type="radio" name="score03" value="#">2 <input type="radio"
					name="score03" value="#">1</td>
				<td align="center"><textarea id="textarea03" style="width:100%;height:60px"
						name="evaluate01"></textarea></td>

			</tr>
			<tr>
				<td align="center">夏昆</td>
				<td align="center"><input type="radio" name="score04"
					value="#">5 <input type="radio" name="score04" value="#">4
					<input type="radio" name="score04" value="#">3 <input
					type="radio" name="score04" value="#">2 <input type="radio"
					name="score04" value="#">1</td>
				<td align="center"><textarea id="textarea04" style="width:100%;height:60px"
						name="evaluate01"></textarea></td>

			</tr>

			<tr>
				<td colspan="3" bgcolor="gainsboro"><b>问卷说明:</b>此问卷是对管理人员的一次考评,当选择了给该管理人员打分，应在依据列填写评分依据;<br />
					<b>填写示例:</b>我在开发过程中遇到错误，能够及时指导；跟我做多次沟通，帮助我成长.</td>
			</tr>

		</table>
		<table align="center" width=80%>
			<tr>
				<td colspan="3" align="center"><input type="reset" value="重置" onclick="resetTestOne()"
					style="width:60; height:30"> <input type="button"
					onclick="submitTestOne()" value="提交" style="width:60; height:30"></td>
			</tr>
		</table>
	</form>
</body>
</html>
