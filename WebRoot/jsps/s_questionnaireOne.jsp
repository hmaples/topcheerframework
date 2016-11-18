<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>天正员工考评问卷</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/s_questionnaireOneSubmit.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>

  </head>


  <body>
    <h2 align="center">天正员工考评问卷</h2>
<!--     <h3 align="right">
    交付三部:
    耿建锋<br/>
    <a href="logon.jsp">登出</a>
    </h3> -->
	<form name="form1" action="#">
		<table border=1 align="center" width=900>
			<tr>
				<td align="center" width=400>部门</td>
				<td align="center" width=400>姓名</td>
				<td align="center" width=400>评分</td>
				<td align="center" width=400>依据</td>
			</tr>
			<tr>
				<td align="center">交付三部</td>
				<td align="center" >金晓钰</td>
				<td align="center">
				<input type="radio" name="score1" id="1_1" value="#">1星
				<input type="radio" name="score1" id="1_2" value="#">2星
				<input type="radio" name="score1" id="1_3" value="#">3星
				<input type="radio" name="score1" id="1_4" value="#">4星
				<input type="radio" name="score1" id="1_5" value="#">5星
				</td>
				<td align="center">
				<textarea id="textarea1" name="suggestion1"  style="width:400px;height:100px;"></textarea>
				</td>
			</tr>
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>夏昆</td>
			<td align="center" width=1500>
			<input type="radio" name="score2" value="#">1星
			<input type="radio" name="score2" value="#">2星
			<input type="radio" name="score2" value="#">3星
			<input type="radio" name="score2" value="#">4星
			<input type="radio" name="score2" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea2" name="suggestion2" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
			
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>叶超</td>
			<td align="center" width=1500>
			<input type="radio" name="score3" value="#">1星
			<input type="radio" name="score3" value="#">2星
			<input type="radio" name="score3" value="#">3星
			<input type="radio" name="score3" value="#">4星
			<input type="radio" name="score3" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea3" name="suggestion3" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
			
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>王伟</td>
			<td align="center" width=1500>
			<input type="radio" name="score4" value="#">1星
			<input type="radio" name="score4" value="#">2星
			<input type="radio" name="score4" value="#">3星
			<input type="radio" name="score4" value="#">4星
			<input type="radio" name="score4" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea4" name="suggestion4" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
			
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>廖旭</td>
			<td align="center" width=1500>
			<input type="radio" name="score5" value="#">1星
			<input type="radio" name="score5" value="#">2星
			<input type="radio" name="score5" value="#">3星
			<input type="radio" name="score5" value="#">4星
			<input type="radio" name="score5" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea5" name="suggestion5" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
			
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>马琦睿</td>
			<td align="center" width=1500>
			<input type="radio" name="score6" value="#">1星
			<input type="radio" name="score6" value="#">2星
			<input type="radio" name="score6" value="#">3星
			<input type="radio" name="score6" value="#">4星
			<input type="radio" name="score6" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea6" name="suggestion6" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
			
			<tr>
			<td align="center">交付三部</td>
			<td align="center" width=100>沈丞恭</td>
			<td align="center" width=1500>
			<input type="radio" name="score7" value="#">1星
			<input type="radio" name="score7" value="#">2星
			<input type="radio" name="score7" value="#">3星
			<input type="radio" name="score7" value="#">4星
			<input type="radio" name="score7" value="#">5星
			</td>
			<td align="center">
			<textarea id="textarea7" name="suggestion7" style="width:400px;height:100px;"></textarea>
			</td>
			</tr>
		<tr>
		<!-- 提示以黑体显示,上下行加空行增加空间 -->
		<td colspan=4><br/>提示:评分后必须填写评分依据,填写时请不要提及部门、项目组、人名等可能泄露信息的内容<br/><br/></td>
		</tr>
		
		<tr>
		<td align="center" colspan=4>
		<input type="button" onclick="submitone()" value="提交">
		<input type="reset" value="重置">
		</td>
		</tr>
			

		</table>
	</form>
  </body>
</html>
