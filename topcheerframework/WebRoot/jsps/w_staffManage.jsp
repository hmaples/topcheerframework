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

<title>人员信息管理</title>

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
	<h2 align="center">职工信息管理</h2>
	<div style="position:absolute; z-index:1;margin-left:250px; width:800px;">
		<table border=1 align="center" width="800">
			<tr bgcolor="gray">
				<td>姓名</td>
				<td>部门</td>
				<td>项目组名称</td>
				<td>职位</td>
				<td>操作</td>
			</tr>
			<tr>
				<td>沈成功</td>
				<td>交付三部</td>
				<td>交行统一认证</td>
				<td>普通员工</td>
				<td><span onclick="show(1)">修改</span>&nbsp;<span
					onclick="show(2)">详情</span>&nbsp;<a>离职</a></td>
			<tr>
			<tr>
				<td>玛丽</td>
				<td>交付三部</td>
				<td>交行统一认证</td>
				<td>普通员工</td>
				<td><span onclick="show(1)">修改</span>&nbsp;<span
					onclick="show(2)">详情</span>&nbsp;<a >离职</a></td>
			<tr>
			<tr>
				<td>王伟</td>
				<td>交付三部</td>
				<td>交行统一认证</td>
				<td>普通员工</td>
				<td><span onclick="show(1)">修改</span>&nbsp;<span
					onclick="show(2)">详情</span>&nbsp;<a >离职</a></td>
			<tr>
			<tr>
				<td>廖旭</td>
				<td>交付三部</td>
				<td>交行统一认证</td>
				<td>普通员工</td>
				<td><span onclick="show(1)">修改</span>&nbsp;<span
					onclick="show(2)">详情</span>&nbsp;<a >离职</a></td>
			<tr>
			<tr>
				<td align="center" colspan="5"><span onclick="show(3)">添加</span></td>
			<tr>
		</table>
	</div>

<!-- 修改员工信息 -->
<div id="result1" name="resultDiv"
		style="position:relative; z-index:2;background-color:red; width:500px;margin: auto;display:none">
		员工姓名：<input type="text" name="name" value="玛丽"><br /> 部门名称：<input
			type="text" name="name" value="交付三部"><br /> 岗位名称：<input
			type="text" name="name" value="普通员工"><br /> 项目组名称：<input
			type="text" name="name" value="交行统一认证"><br /> 入组日期：<input
			type="text" name="name" value="2016.11.01"><br /> 任职性质：<input
			type="text" name="name" value="无"><br /> 管理覆盖：<input 
			type="text" name="name" value="无"><br /> 任职日期：<input
			type="text" name="name" value="无"><br />
		<button onclick="disShow(1)">确定</button>
	</div>
	
	<!-- 查看员工 -->
	<div id="result2" name="resultDiv" onclick="disShow(2)"
		style="position:relative; z-index:2;background-color:red; width:500px;margin: auto;display:none">
		员工姓名：玛丽<br /> 部门名称：交付三部<br /> 岗位名称：普通员工<br /> 项目组名称：交行统一认证<br />
		入组日期：2016.11.01<br /> 任职性质：无<br /> 管理覆盖：无<br /> 任职日期：无<br />

	</div>
	
	<!-- 添加员工 -->
	<div id="result3" name="resultDiv"
		style="position:relative; z-index:2;background-color:red;width:500px;margin: auto;display:none">
		员工姓名：<input type="text" name="name"><br /> 部门名称：<input
			type="text" name="name"><br /> 岗位名称：<input type="text"
			name="name"><br /> 项目组名称：<input type="text" name="name"><br />
		入组日期：<input type="text" name="name"><br /> 任职性质：<input
			type="text" name="name"><br /> 管理覆盖：<input type="text"
			name="name"><br /> 任职日期：<input type="text" name="name"><br />
		<button onclick="disShow(3)">确定</button>
	</div>

</body>
</html>

