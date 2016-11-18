<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>天正员工考评结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <!-- 引入 ECharts 文件 -->
    <script src="js/echarts.js"></script>
    <script src="js/s_display.js"></script>
  </head>
  
  <body>
    <h2 align="center">天正员工考评结果</h2>
<!--     <h3 align="right">
    开发交付中心:
	冯军<br/>
    <a href="jsps/s_tobecontinued.jsp">登出</a>
    </h3> -->
    
    <!-- <img src='demo.jpg'/> -->
        <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<!--     <div id="main" style="width: 60px;height:40px;"></div>
    <script src="js/s_testOneEcharts.js"></script> -->
    
    <table border=1 align="center" width="1000">
    <tr>
    		<td align="center" onclick="display(1)">任期满足管理人员考评结果表
    		<td align="center" onclick="display(2)">任期不足管理人员考评结果表
    		<td align="center" onclick="display(3)">司龄满足工作人员考评结果表
    		<td align="center" onclick="display(4)">司龄不足工作人员考评结果表
    		</td>
    	</tr>
    </table>
    <p/>
    
    <div id="result1" name="resulttable" style="display:block">
    <table border=1 align="center" width="1000">
    <tr>
    		<td align="center">部门
    		<td align="center">姓名
    		<td align="center">评分结果  		    		
    		</td>
    </tr>
    <tr>
    		<td align="center">交付三部
    		<td align="center">金晓钰<br/><br/>(任期时间:2015.11.11)
    		<td align="center">
    		<div id="main1" style="width: 200px;height:200px;"></div>
    <script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    
    <tr>
    		<td align="center">交付三部
    		<td align="center">夏昆<br/><br/>(任期时间:2015.11.11)
    		<td align="center">
		<div id="main2" style="width: 200px;height:200px;"></div>
    	<script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    </table>
    </div>   
    
   <!-- 表2 --> 
        <div id="result2" name="resulttable" style="display:none">
    <table border=1 align="center" width="1000">
    <tr>
    		<td align="center">部门
    		<td align="center">姓名
    		<td align="center">评分结果  		    		
    		</td>
    </tr>
    <tr>
    		<td align="center">交付三部
    		<td align="center">叶超<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
    		<div id="main3" style="width: 200px;height:200px;"></div>
    <script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    
    <tr>
    		<td align="center">交付三部
    		<td align="center">王大伟<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
		<div id="main4" style="width: 200px;height:200px;"></div>
    	<script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    </table>
    </div>  
    
    <!-- 表3 -->
        <div id="result3" name="resulttable" style="display:none">
    <table border=1 align="center" width="1000">
    <tr>
    		<td align="center">部门
    		<td align="center">姓名
    		<td align="center">评分结果  		    		
    		</td>
    </tr>
    <tr>
    		<td align="center">交付三部
    		<td align="center">廖旭<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
    		<div id="main5" style="width: 200px;height:200px;"></div>
    <script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>

    <tr>
    		<td align="center">交付三部
    		<td align="center">马琦睿<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
		<div id="main6" style="width: 200px;height:200px;"></div>
    	<script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    </table>
    </div>
    
    
        <div id="result4" name="resulttable" style="display:none">
    <table border=1 align="center" width="1000">
    <tr>
    		<td align="center">部门
    		<td align="center">姓名
    		<td align="center">评分结果  		    		
    		</td>
    </tr>
    <tr>
    		<td align="center">交付三部
    		<td align="center">沈丞恭<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
    		<div id="main7" style="width: 200px;height:200px;"></div>
    <script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    
    <tr>
    		<td align="center">交付三部
    		<td align="center">王伟<br/><br/>(任期时间:2016.11.11)
    		<td align="center">
		<div id="main8" style="width: 200px;height:200px;"></div>
    	<script src="js/s_testOneEcharts.js"></script>
    		</td>
    </tr>
    </table>
    </div>     
    

    
<!--         <tr>
    		<td rowspan=5 align="center">夏昆<br/><br/>(任期时间:2016.1.1)
    		<td align="center">1星
    		<td align="center">0
    		</td>
    </tr>
    <tr>
    		<td align="center">2星
    		<td align="center">0
    </tr>
        <tr>
    		<td align="center">3星
    		<td align="center">0
    </tr>
        <tr>
    		<td align="center">4星
    		<td align="center">0
    </tr>
        <tr>
    		<td align="center">5星
    		<td align="center">10
    </tr> -->
	
 		

    <h2 align="center">
    <a href="jsps/s_tobecontinued.jsp"><input type="button" name="Submit" value="返回"></a>
    </h2>

  </body>
</html>
