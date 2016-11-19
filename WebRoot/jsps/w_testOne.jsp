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

<title>调查问卷一</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="/topcheerframework/js/w_testOne.js"></script>
<script type="text/javascript"
	src="/topcheerframework/js/jquery-1.9.1.js"></script>

</head>

<body>
	<h2 align="center">调查问卷一</h2>
	<%=session.getAttribute("staffId")%>
	<form action="#" id="test1">
		<table border=1 align="center" width=80%>
			<tr>
				<td align="center" width=100>姓名</td>
				<td align="center">评分</td>
				<td align="center">依据</td>
			</tr>

			<c:forEach var="staffManger" items="${listStaffManger}">
				<tr>
					<td align="center" width=20%>${staffManger.sName}<br />${staffManger.scDate}</td>
					<td align="center" width=40%>
					
					<c:forEach var="issue" items="${listIssue}">
							<c:set var="type" value="${issue.type}" />
							<c:if test="${type==1}">
								<c:forEach var="option" items="${issue.optionList}">
									<input type="radio" id="${issue.issueId}_${option.optionId}"
										name="radio_${staffManger.sId}_${issue.issueId}"
										value="${option.option}">${option.option}
								</c:forEach>
							</c:if>
						</c:forEach></td>
					<td align="center"><textarea id="${staffManger.sId}" rows="5"
							cols="70" name="text_${staffManger.sId}"></textarea></td>
				</tr>
			</c:forEach>
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
