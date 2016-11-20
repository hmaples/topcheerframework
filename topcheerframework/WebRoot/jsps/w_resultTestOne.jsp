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

<title>管理人员打分结果</title>

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
	<h2 align="center">管理人员打分结果</h2>
	<a href="jsps/window_open.jsp">返回</a>
	<table align="center" width="80%">
		<tr>
			<td align="center" onclick="show(1)"><input type="button"
				style="width:100%;height:40px" value="任期满足管理人员考评结果表"></td>
			<td align="center" onclick="show(2)"><input type="button"
				style="width:100%;height:40px" value="任期不足管理人员考评结果表"></td>
			<td align="center" onclick="show(3)"><input type="button"
				style="width:100%;height:40px" value="任期满足管理人员考评结果表（司龄不足）">
			</td>
			<td align="center" onclick="show(4)"><input type="button"
				style="width:100%;height:40px" value="任期不足管理人员考评结果表（司龄不足）">
			</td>
		</tr>
	</table>
	<div id="result1" name="resultDiv"
		style="position:absolute; z-index:1;background-color:mintcream; width:100%;display:block">
		<table border=1 align="center" width=80%>
			<tr>
				<td align="center" width=20%>部门</td>
				<td align="center" width=20%>姓名</td>
				<td align="center" width=20%>分数</td>
				<td align="center" width=20%>人数</td>
				<td align="center">评分依据</td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付一部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">赵子微</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">曾凡忠</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">李鹏</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付二部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">李增群</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">朱诚诚</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">朱诚诚</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付三部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">耿建锋</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">金晓钰</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">夏昆</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
		</table>
	</div>
	<!-- 结果二 -->
	<div id="result2" name="resultDiv"
		style="position:absolute; z-index:1; width:100%;display:none">
		<h3 align="center">开发中......</h3>
	</div>

	<!-- 结果四 -->
	<div id="result4" name="resultDiv"
		style="position:absolute; z-index:1; width:100%;display:none">
		<h3 align="center">开发中......</h3>
	</div>
	<!-- 结果三-->
	<div id="result3" name="resultDiv"
		style="position:absolute; z-index:1;background-color:mintcream; width:100%;display:none">
		<table border=1 align="center" width=80%>
			<tr>
				<td align="center" width=20%>部门</td>
				<td align="center" width=20%>姓名</td>
				<td align="center" width=20%>分数</td>
				<td align="center" width=20%>人数</td>
				<td align="center">评分依据</td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付一部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">赵子微</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">曾凡忠</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">李鹏</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付二部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">李增群</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">朱诚诚</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">朱诚诚</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="20" align="center">交付三部</td>
				<td rowspan="5" align="center">冯军</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">耿建锋</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">金晓钰</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td rowspan="5" align="center">夏昆</td>
				<td align="center">5</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:25px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center">2</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">0</td>
				<td align="center"><input type="button" onclick="showDetail(1)"
					style="width:100%;height:30px" value="点击查看详情"></td>
			</tr>
		</table>
	</div>

	<!-- 问卷结果详情 -->
	<div id="resultDetail1" name="resultDiv" onclick="notShow(1)"
		style="position:relative; z-index:2;background-color:	
				lavenderblush; width:80%;margin:auto;display:none">
		<br /><h2 align="center">评分依据</h2>
			<ul><li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />
			<li>本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!</li><br />		
			</ul>
	</div>

</body>
</html>
