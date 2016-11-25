<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JAVA开发框架</title>
<script type="text/javascript">
function load(){
	var errMsg = document.getElementById("errMsg").value;
	if(errMsg!=null&&errMsg!=""){
		alert(errMsg);
	}
}
</script>
</head>
<body onload="load()">
	<input type="hidden" value="${message}" id="errMsg">
	<form action="commonAction.do" method="POST">
		用户名：<input type="text" name="userName"><br />
		密     码：<input type="password" name="passWord">
		<input type="hidden" name="actionNum" value="loginService">
		<input type="hidden" name="id" value="1">
		<input type="hidden" name="inte" value="1">
		<input type="hidden" name="date" value="2016-11-11">
		<input type="hidden" name="lon" value="1">
		<input type="hidden" name="lonn" value="1">
		<input type="submit" value="登录">
	</form>
</body>
</html>