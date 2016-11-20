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

<title>天正员工建议调查结果</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="/topcheerframework/js/w_issue.js"></script>
<script type="text/javascript" src="/topcheerframework/js/jquery-1.9.1.js"></script>
</head>

<body>
	<h2 align="center">天正员工建议调查结果</h2>
	<div style="position:absolute;margin-left:10%;width:80%;z-index: 1">
	<table align="center" width=100% border="1">
		<tr>
			<td align="center">部门</td>
			<td align="center">项目</td>
			<td align="center">有效答案数</td>
			<td align="center">答案详情</td>
		</tr>
		<tr>
			<td align="center" rowspan="3">交付一部</td>
			<td align="center">开发交付体系</td>
			<td align="center">8</td>
			<td align="center"><input type="button" onclick="show(11)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为客户创造价值为员工创造机会</td>
			<td align="center">10</td>
			<td align="center"><input type="button" onclick="show(12)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为员工创造机会</td>
			<td align="center">5</td>
			<td align="center"><input type="button" onclick="show(13)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center" rowspan="3">交付二部</td>
			<td align="center">开发交付体系</td>
			<td align="center">8</td>
			<td align="center"><input type="button" onclick="show(21)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为客户创造价值为员工创造机会</td>
			<td align="center">12</td>
			<td align="center"><input type="button" onclick="show(22)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为员工创造机会</td>
			<td align="center">14</td> 
			<td align="center"><input type="button" onclick="show(23)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center" rowspan="3">交付三部</td>
			<td align="center">开发交付体系</td>
			<td align="center">10</td>
			<td align="center"><input type="button" onclick="show(31)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为客户创造价值为员工创造机会</td>
			<td align="center">7</td>
			<td align="center"><input type="button" onclick="show(32)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
		<tr>
			<td align="center">为员工创造机会</td>
			<td align="center">9</td>
			<td align="center"><input type="button" onclick="show(33)"
				style="width:100%;height:30px" value="点击查看详情">
			</td>
		</tr>
	</table>
		<form action="<%=path %>/jsps/window_open.jsp">
	<input type="submit" value="返回">
</form>
	</div>
	<!-- 建议详情 -->
	<div id="resultDetail11" name="resultDiv" onclick="noShow(11)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付一部</h2>
		<h3>开发交付体系</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail12" name="resultDiv" onclick="noShow(12)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付一部</h2>
		<h3>为客户创造价值为员工创造机会</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail13" name="resultDiv" onclick="noShow(13)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付一部</h2>
		<h3>为员工创造机会</h3>
		<ul>
			<li>为员工创造机会,为员工创造机会,开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
		<div id="resultDetail21" name="resultDiv" onclick="noShow(21)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付二部</h2>
		<h3>开发交付体系</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail22" name="resultDiv" onclick="noShow(22)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付二部</h2>
		<h3>为客户创造价值为员工创造机会</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail23" name="resultDiv" onclick="noShow(23)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付二部</h2>
		<h3>为员工创造机会</h3>
		<ul>
			<li>为员工创造机会,为员工创造机会,开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
		<div id="resultDetail31" name="resultDiv" onclick="noShow(31)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付三部</h2>
		<h3>开发交付体系</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail32" name="resultDiv" onclick="noShow(32)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付三部</h2>
		<h3>为客户创造价值为员工创造机会</h3>
		<ul>
			<li>开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
	<div id="resultDetail33" name="resultDiv" onclick="noShow(33)" 
		style="position:relative; z-index:9;background-color:snow; width:80%;margin:auto;display:none">
		<br /><h2 align="center">交付三部</h2>
		<h3>为员工创造机会</h3>
		<ul>
			<li>为员工创造机会,为员工创造机会,开发交付体系快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>为员工创造机会,为员工创造机会,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
			<li>开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,开发交付体系,快乐工作;快乐生活;快乐工作;快乐生活;快乐工作;快乐生活</li><br />
		</ul>
	</div>
</body>
</html>
