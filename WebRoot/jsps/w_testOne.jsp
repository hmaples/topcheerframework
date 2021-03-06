<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1 align="center">
			部门管理人员考评表
		</h1>
		<form id="testOne">
			<table align="center" width=80%>
				<tr>
					<td colspan="3">
						<b>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</b>
					</td>
				</tr>
			</table>
			<table border=1 align="center" width=80%>
				<tr height=40px>
					<td align="center" width=15%>
						<b>姓名</b>
					</td>
					<td align="center" width=30%>
						<b>评分</b>
					</td>
					<td align="center">
						<b>依据</b>
					</td>
				</tr>
				<c:forEach var="staffManger" items="${listStaffManger}">
					<tr>
						<td align="center" width=20%>
							${staffManger.sName}
						</td>
						<td align="center" width=40%>
							<c:forEach var="issue" items="${listIssue}">						
									<c:forEach var="option" items="${issue.optionList}">
										<input type="radio" id="${issue.issueId}_${option.optionId}"
											name="${staffManger.sId}"
											value="${option.option}">${option.option}
								</c:forEach>
							</c:forEach>
						</td>
						<td align="center">
							<textarea id="${staffManger.sId}" rows="5" cols="70"
								name="text_${staffManger.sId}"></textarea>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3" bgcolor="gainsboro">
						<b>问卷说明:</b>本问卷是对管理人员的一次考评,当您选择了给该管理人员打分，请在依据列进行填写评分依据，否则不能提交;
						<br />
						<b>依据可以这样填写：</b>我在开发过程中遇到错误，能够及时指导；跟我做多次沟通，帮助我成长......
					</td>
				</tr>

			</table>
			<table align="center" width=80%>
				<tr>
					<td colspan="3" align="center">
						<input type="reset" value="重置" onclick="resetTestOne()"
							style="width: 60; height: 30">
						<input type="button" onclick="submitTestOne()" value="提交"
							style="width: 60; height: 30">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
