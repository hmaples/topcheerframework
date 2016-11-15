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

<title>题目管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="/topcheerframework/js/w_result.js"></script>
<script type="text/javascript"
	src="/topcheerframework/js/jquery-1.9.1.js"></script>
</head>

<body>
	<h2 align="center">问题管理</h2>
	
	<div id="issueManage" 
		style="position:absolute; z-index:1;width:800px;margin-left:250px;display:block">
		<table border=1 align="center" width=800>
			<tr>
				<td>序号</td>
				<td>题目内容</td>
				<td>操作</td>
			</tr>
			<tr>
				<td>1</td>
				<td>您的性别是？<br /> <input type="radio" name="issue1">男 <input
					type="radio" name="issue1">女
				</td>
				<td><button onclick="show(2)">修改</button></td>
			</tr>
			<tr>
				<td>2</td>
				<td>您喜欢的运动是是？<br /> <input type="checkbox" name="issue2">夜跑
					<input type="checkbox" name="issue2">夜跑 <input
					type="checkbox" name="issue2">夜跑 <input type="checkbox"
					name="issue2">夜跑
				</td>
				<td><button onclick="show(2)">修改</button></td>
			</tr>
			<tr>
				<td>3</td>
				<td>您认为怎样为客户创造价值？<br />
				</td>
				<td><button onclick="show(2)">修改</button></td>
			</tr>
			<tr><td colspan="3" align="center"><button onclick="show(1)">添加题目</button></td></tr>
		</table>
	</div>
	
	<!-- 问题添加 -->
	<div id="result1" name="resultDiv"
		style="position:relative; z-index:2;background-color:red; width:500px;margin: auto;display:none">
		您的题目是：<input type="text"><br /> 请选择您的题目类型：<input type="radio"
			name="type" value="1">单选<input type="radio" name="type"
			value="2">多选<input type="radio" name="type" value="3">问答<br />
		请选择您的题目选项：<br /><input type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br /> <input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br />
		<input type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br />
			<button onclick="disShow(1)" >确定</button>
	</div>
	
	<!-- 问题修改  -->
	<div id="result2" name="resultDiv"
		style="position:relative; z-index:2;background-color:red; width:500px;margin: auto;display:none">
		您的题目是：<input type="text" value="您的性别是？"><br /> 您的题目类型：<input type="radio"
			name="type" value="1">单选<input type="radio" name="type"
			value="2">多选<input type="radio" name="type" value="3">问答<br />
		请选择您的题目选项：<br /><input type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br /> <input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br />
		<input type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<input
			type="checkbox" name="option" value="optiop_id">阅读<br />
			<button onclick="disShow(2)" >确定</button>
	</div>

</body>
</html>
