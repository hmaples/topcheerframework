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

<title>问卷管理</title>

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
	<h2 align="center">问卷管理</h2>
	<div id="result0"  name="resultDiv"
		style="position:absolute; z-index:1;width:800px;margin-left:250px;display:block">
		<table border=1 align="center" width=800>
			<tr align="center">
				<td>问卷名称</td>
				<td>备注</td>
			</tr>
			<tr align="center">
				<td onclick="show(1)">问卷一</td>
				<td>投票问卷</td>
			</tr>
			<tr align="center">
				<td onclick="show(1)">问卷二</td>
				<td>考评问卷</td>
			</tr>
			<tr align="center">
				<td onclick="show(1)">问卷三</td>
				<td>投票问卷</td>
			</tr>
			<tr align="center">
				<td onclick="show(1)">问卷四</td>
				<td>投票问卷</td>
			</tr>
			<tr><td colspan="2" align="center"><button onclick="show(3)">添加问卷</button></td></tr>
		</table>
	</div>
	
	<!-- 问卷查看 -->
	<div id="result1" name="resultDiv"
		style="position:relative; z-index:2;background-color:white; width:800px;margin: auto;display:none">
			<table border=1 align="center" width=800>
			
			<tr>
				<td>1</td>
				<td>您的性别是？<br /> <input type="radio" name="issue1">男 <input
					type="radio" name="issue1">女
				</td>
			</tr>
			<tr>
				<td>2</td>
				<td>您喜欢的运动是是？<br /> <input type="checkbox" name="issue2">夜跑
					<input type="checkbox" name="issue2">夜跑 <input
					type="checkbox" name="issue2">夜跑 <input type="checkbox"
					name="issue2">夜跑
				</td>
			</tr>
			<tr>
				<td>3</td>
				<td>您认为怎样为客户创造价值？<br />
				</td>
			</tr>
			<tr><td colspan="2" align="center"><button onclick="noShow(1)">返回</button><button onclick="show(4)">修改问卷</button></td></tr>
		</table>
	</div>
	<!-- 问卷添加 -->
		<div id="result3" name="resultDiv" 
		style="position:relative; z-index:2;background-color:white; width:800px;margin: auto;display:none">
			试卷名称：<input type="text">
			备注：<input type="text">
			<button onclick="noShow(3)">确定</button>
			<table border=1 align="center" width=800>
			<tr><td></td><td>题目内容</td><td>题目类型</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
		
		</table>
	</div>
		<!-- 问卷修改 -->
		<div id="result4" name="resultDiv" 
		style="position:relative; z-index:2;background-color:white; width:800px;margin: auto;display:none">
			试卷名称：<input type="text" value="问卷一">
			备注：<input type="text" value="投票问卷">
			<button onclick="noShow(4)">确定</button>
			<table border=1 align="center" width=800>
			<tr><td></td><td>题目内容</td><td>题目类型</td></tr>
			<tr><td><input type="checkbox" name="issue" checked="checked"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue" checked="checked"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue" checked="checked"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue" checked="checked"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的爱好是？</td><td>多选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的性别是？</td><td>单选题</td></tr>
			<tr><td><input type="checkbox" name="issue"></td><td>您的意见是？</td><td>问答题</td></tr>
		
		</table>
	</div>
</body>
</html>
