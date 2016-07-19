<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
		<title>用户登录</title>
		<style>
#container {
	width: 998px;
	heigt: 609px;
	background: url(${pageContext.request.contextPath}/images/bc_bg.jpg) no-repeat;
}
</style>

	</head>
	<script type="text/javascript">
	function toSubmit(){
	submit();
	}
	</script>
	<body>
		<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" language="javascript"
			type="text/javascript" charset="UTF-8"></script>
		<script src="${pageContext.request.contextPath}/js/frame.js" language="javascript"
			type="text/javascript" charset="UTF-8"></script>
			<div id="container" style="padding-top:2px;">
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<div class="loginform">
					<form action="commonAction" method="post" id="form1">
					<input type="hidden" name="actionNum" value = "stsServiceloginSub">
						<table width="30%" align="center">
							<tr>
								<td width="28%" align="right">
								</td>
								<td width="72%">
									<input style="width:150px;" id="loginAccount" name="loginAccount"
										value="${loginAccount}" type="text" />
								</td>
							</tr>
							<tr>
								<td width="28%" align="right">
								</td>
								<td width="72%">
									<input style="width:150px;" id="password" name="password"
										type="password" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" style="padding-top:7px;">
									<a id="sub" style="text-decoration:none;cursor:hand;" onclick="javascript:form1.submit();">
										<img alt="登陆" src="<%=request.getContextPath()%>/images/loginBtn.png">
									</a>
								</td>
							</tr>
						</table>													
					</form>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</div>
			</div>
	</body>
</html>