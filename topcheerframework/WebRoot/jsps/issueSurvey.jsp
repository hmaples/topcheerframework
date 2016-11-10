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

<title>My JSP 'questionSurvey.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="/topcheerframework/js/jquery-1.9.1.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="/topcheerframework/js/issueSurvey.js"></script>
</head>

<body>
	<h2 align="center">调查问卷</h2>
	<form id="surveyForm" action="commonAction" method="post">
		<input type="hidden" name="actionNum" value="gotoquestionSubmitService" />
		<input type="hidden" id="radioValue" name="radioValue" />
			<input type="hidden" id="checkValue" name="checkValue" />
			<input type="hidden" id="textValue" name="textValue" />
		<c:forEach var="issue" items="${listIssue}">
			<c:set var="type" value="${issue.type}" />
			<c:if test="${type==1}">
			${issue.issueId}、${issue.content}<br />
				<c:forEach var="option" items="${issue.optionList}">
					<input type="radio" id="${issue.issueId}_${option.optionId}" name="radio_${issue.issueId}" value="${option.option}">${option.option}
			</c:forEach>
			</c:if>
			<br />
			<c:if test="${type==2}">
			${issue.issueId}、${issue.content}<br />
				<c:forEach var="option" items="${issue.optionList}">
					<input type="checkbox" id="${issue.issueId}_${option.optionId}"
						name="checkbox_${issue.issueId}" value="${option.option}">${option.option}
			</c:forEach>
			</c:if>
			<br />
			<c:if test="${type==3}">
			${issue.issueId}、${issue.content}<br />
				<textarea rows="3" id="${issue.issueId}" cols="50" name="textarea_${issue.issueId}"></textarea>
			</c:if>
			<br />
		</c:forEach>
		<input type="button" onclick="dataHandling()" value="提交">
	</form>
</body>
</html>
