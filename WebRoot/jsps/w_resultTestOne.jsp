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

<title>问卷一调查结果</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="/topcheerframework/js/w_result.js"></script>
<script type="text/javascript" src="/topcheerframework/js/jquery-1.9.1.js"></script>
</head>

<body>
	<h2 align="center">问卷调查结果</h2>
	<table  align="center" width="800">
		
		<tr>
			<td align="center" onclick="show(1)">任期满足管理人员考评结果表</td>
			<td align="center" onclick="show(2)">任期不足管理人员考评结果表</td>
			<td align="center" onclick="show(3)">任期满足管理人员考评结果表（司龄不足）</td>
			<td align="center" onclick="show(4)">任期不足管理人员考评结果表（司龄不足）</td>
		</tr>
	</table>
	<div id="result1" name="resultDiv" 
		style="position:absolute; z-index:1;margin-left:250px; width:800px;display:block">
		<table border=1 align="center" width="800">
			<tr>
				<td align="center">部门</td>
				<td align="center">姓名</td>
				<td align="center">分数</td>
				<td align="center">人数</td>
			</tr>
			<tr>
				<td rowspan="8">交付三部</td>
				<td rowspan="4">金</td>
				<td>5</td>
				<td  align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td rowspan="4">夏</td>
				<td>5</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">1</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
		</table>
	</div>
	<div id="result2" name="resultDiv"
	
		style="position:absolute; z-index:1;margin-left:250px; width:800px;background-color:yellow;display:none">
		<table border=1 align="center" width="800">
			<tr>
				<td align="center">部门</td>
				<td align="center">姓名</td>
				<td align="center">分数</td>
				<td align="center">人数</td>
			</tr>
			<tr>
				<td rowspan="8">交付三部</td>
				<td rowspan="4">金</td>
				<td>5</td>
				<td  align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td rowspan="4">夏</td>
				<td>5</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">1</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
		</table>
	</div>
	<div id="result3" name="resultDiv"
		style="position:absolute; z-index:1;margin-left:250px;width:800px;background-color:green;display:none">
		<table border=1 align="center" width="800">
						<tr>
				<td align="center">部门</td>
				<td align="center">姓名</td>
				<td align="center">分数</td>
				<td align="center">人数</td>
			</tr>
			<tr>
				<td rowspan="8">交付三部</td>
				<td rowspan="4">金</td>
				<td>5</td>
				<td  align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td rowspan="4">夏</td>
				<td>5</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">1</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
		</table>
	</div>
	<div id="result4" name="resultDiv"
		style="position:absolute; z-index:1;margin-left:250px;width:800px;background-color:gray;display:none">
		<table border=1 align="center" width="800">
						<tr>
				<td align="center">部门</td>
				<td align="center">姓名</td>
				<td align="center">分数</td>
				<td align="center">人数</td>
			</tr>
			<tr>
				<td rowspan="8">交付三部</td>
				<td rowspan="4">金</td>
				<td>5</td>
				<td  align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td rowspan="4">夏</td>
				<td>5</td>
				<td align="center" onclick="showDetail(1)">2</td>
			</tr>
			<tr>
				<td>4</td>
				<td align="center" onclick="showDetail(1)">1</td>
			</tr>
			<tr>
				<td>3</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
			<tr>
				<td>2</td>
				<td align="center" onclick="showDetail(1)">0</td>
			</tr>
		</table>
	</div>
	<!-- 问卷结果详情 -->
	<div id="resultDetail1" name="resultDiv" onclick="notShow(1)"
		style="position:relative; z-index:2;background-color:red; width:600px;margin:auto;display:none">
		<h4 align="center">评分依据</h4>
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
		z-index 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。<br />
	</div>
	
</body>
</html>
