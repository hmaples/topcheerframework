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

<title>天正员工建议调查问卷</title>

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
	<h2 align="center">天正员工建议调查问卷</h2>
	<form>
		<table border=1 align="center" width=80%>
			<tr height=40px>
				<td align="center" width=35%><b>项目</b>
				</td>
				<td align="center" width=65%><b>如何做</b>
				</td>
			</tr>
			<tr>
				<td align="center">开发交付体系</td>
				<td align="center"><textarea style="width:100%;height:80px"
						onfocus="if (value =='个人理解如何做能够实现优质高效的交付，例如：团建，员工、项目，报销等等能想到的，有助于将我们的交付达到优质高效均可'){value =''}"
						onblur="if (value ==''){value='个人理解如何做能够实现优质高效的交付，例如：团建，员工、项目，报销等等能想到的，有助于将我们的交付达到优质高效均可'}"
						name="evaluate01">个人理解如何做能够实现优质高效的交付，例如：团建，员工、项目，报销等等能想到的，有助于将我们的交付达到优质高效均可</textarea>
				</td>
			</tr>
			<tr>
				<td align="center">为客户创造价值为员工创造机会</td>
				<td align="center"><textarea style="width:100%;height:80px"
						onfocus="if (value =='个人理解如何做能够真正为客户创造价值'){value =''}"
						onblur="if (value ==''){value='个人理解如何做能够真正为客户创造价值'}"
						name="evaluate02">个人理解如何做能够真正为客户创造价值</textarea>
				</td>

			</tr>
			<tr>
				<td align="center">为员工创造机会</td>
				<td align="center"><textarea style="width:100%;height:80px"
						name="evaluate02"
						onfocus="if (value =='个人理解如何做能够真正为员工创造机会'){value =''}"
						onblur="if (value ==''){value='个人理解如何做能够真正为员工创造机会'}">个人理解如何做能够真正为员工创造机会</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="gainsboro"><b>问卷说明:</b>本问卷是对部门项目建议调查,可以不做填写直接提交,也可以只做某一道题;<br />
					<b>填写方向,不做强制要求:</b>做得好的是什么;做得好的怎么做可以做得更好;做得不好的是什么;做得不好的怎么做可以做得好;哪些没有做的可以做;那些没有做的怎么做可以做得好......</td>
			</tr>
		</table>
		<table align="center" width=80%>
			<tr>
				<td colspan="3" align="center"><input type="reset" value="重置"
					onclick="resetTestOne()" style="width:60; height:30"> <input
					type="submit" value="提交" style="width:60; height:30">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
