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
<script src="/topcheerframework/js/jquery-1.9.1.js"  type="text/javascript"></script>
<script type="text/javascript"
	src="/topcheerframework/js/questionSurvey.js"></script>
</head>

<body>
	<h2 align="center">调查问卷</h2>
	<form id="MyForm" action="commonAction" method="post">
		<input type="hidden" name="actionNum" value="questionSubmitService" />
			<input type="hidden" id="radioValue" name="radioValue" />
			<input type="hidden" id="checkValue" name="checkValue" />
			<input type="hidden" id="textValue" name="textValue" />
		<c:forEach var="question" items="${quesList}">
			<c:set var="type" value="${question.type }" />

		<c:if test="${type==1}">
			${question.issue_id}、${question.content}<br />
					<input name="radio_${question.issue_id}_${question.option_id}" type="radio" value="${question. optionContent}" />${question. optionContent}			
			</c:if>
			<br />
			<c:if test="${type==2}">
			${question.issue_id}、${question.content}<br />
					<input name="radio_${question.issue_id}_${question.option_id}" type="checkbox" value="${question. optionContent}" />${question. optionContent}			
			</c:if>
	<!-- 问答题 -->
			<c:if test="${type==3}">
		${question.issue_id}、${question.content}<br />
				<textarea rows="3" cols="80" id="radio_${question.issue_id}"  name="textarea"></textarea>
			</c:if>
			<br />
		</c:forEach>
		<input type="button" onclick="judge()" value="提交">
	</form>
</body>
</html>
