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
<%-- 	<form id="surveyForm" action="commonAction" method="post">
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
	</form> --%>
	
	<form action="jsps/s_surveysubmit.jsp" method="post">
	1.您的性别是: <input type="radio" name="sex" value="male">男
	          <input type="radio" name="sex" value="female">女<br/>
	2.您的爱好是: <input type="checkbox" name="c1" value="football">足球
	          <input type="checkbox" name="c2" value="basketball">篮球
	          <input type="checkbox" name="c3" value="pingpang">乒乓球
	          <input type="checkbox" name="c4" value="song">唱歌<br/>
	3.您的意见是: <br/>
	<textarea name="suggestion" style="width:500px;height:200px;"></textarea><br/>
	4.您的取向是: <input type="radio" name="sexuality" value="man">男
	            <input type="radio" name="sexuality" value="woman">女<br/>
	            <input type="submit" value="提交">
	            <input type="reset" value="重置">

	
	</form>
</body>
</html>
