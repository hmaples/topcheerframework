<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userId = request.getParameter("userId");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>questionnaireFirst.jsp</title>
    <link rel="shortcut icon" type="image/x-icon" href="/topcheerframework/images/favicon.ico" media="screen" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	h2{
	font-size:30px;
	}
	/*table{
	*cellpadding:0;
	 cellspacing:0
	}*/
	td{
	border:1px solid
	}
	</style>
	<script src="<%=request.getContextPath()%>/js/jquery-1.9.1.js" type="text/javascript"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/surveySubmit.js"></script>
  </head>
  
  <body style = "background-color:F5F6EB;font-family : 微软雅黑;">
   <div style = "height:500px;font-size:25px;"align = "center"> <h2>欢迎进入问卷调查系统</h2> 
        <div style = "font-size:25px;color:#34352C;font-weight:900;font-family:微软雅黑;" align = "center"><font color="#ff0000"><b>本次调查采用匿名方式，请放心作答。</b></font></div>
       <br/>
       <br/>
       <br/>
   <form id="myForm" method="post" action="jsps/questionnaire.jsp"">
   	<input type="hidden" id="userId" name="userId" value="<%=userId %>">
   	<input type="hidden" name="questionnaireId" id="questionnaireId" value="1">&nbsp;<b></b>
    <table cellpadding="0" cellspacing="0" style ="border:1px solid;font-size:23px;font-family: 微软雅黑; text-align: center; width: 860px; height: 150px;">
    <tr style = "width:300px"><td align ="center">问卷名称</td>
        <td align ="center">调查期限</td>
        <td align ="center">选择</td>
    </tr>
    <tr >
        <td>2016年度上海天正员工满意度调查问卷</td>
        <td>2016.01.01-2016.12.31</td>
        <td align = "center"><input  value="开始填写" type = "button" onclick="userIdJudge()"/></td>
        
    </tr>
    
    </table>
    </form>
    <!-- 匿名承诺 -->
     
   </div> 
  <div>
   <div align="left" style = "padding-left:550px;padding-right:550px;margin-bottom:20px;font-size:10px;color:#34352C;font-family:Microsoft YaHei;">开发部门：开发交付中心-交付三部<br/>开发人员：王伟 廖旭 沈丞恭 美化：马琦睿</div></div>
  </body>
</html>
