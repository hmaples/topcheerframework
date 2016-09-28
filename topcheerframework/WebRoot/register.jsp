<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
	<form action="commonAction" method="post">
		<input type="hidden" name="actionNum" value = "registerSubService">
		用&nbsp;户&nbsp;名：<input type="text" name="userName" value="hmaple"><br /><br />
		手&nbsp;&nbsp;&nbsp;&nbsp;机：<input type="text" name="phone" value="13501972102"><br /><br />
		生日类型：<select name="birthType"><option value="0">阳历</option><option value="1">农历</option></select><br /><br />
		生&nbsp;&nbsp;&nbsp;&nbsp;日：<input type="date" name="birthDay" value="2014-01-13"><br /><br />
		职&nbsp;&nbsp;&nbsp;&nbsp;业：<input type="radio" name="worker" value="0">开发<input type="radio" name="worker" value="1">测试<br /><br />
		爱&nbsp;&nbsp;&nbsp;&nbsp;好：<input type="checkbox" name="hobby" value="0">足球<input type="checkbox" name="hobby" value="1">音乐<input type="checkbox" name="hobby" value="2">旅行<br /><br />
		备&nbsp;&nbsp;&nbsp;&nbsp;注：<textarea name="note" rows="" cols="">就来试试备注</textarea><br /><br />
		<input type="submit" value="确认注册">
	</form>
</body>
</html>