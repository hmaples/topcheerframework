<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>交通银行信用卡</title>
<link href="../css/global.css" rel="stylesheet" type="text/css" />
<link href="../css/tags.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.9.1.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript" src="../js/divstyle2.js" charset="UTF-8"></script>
<style>
	#div1{ 
		font-family: "宋体","微软雅黑","Consolas","Courier New","Arial","Coruier","mono","serif";
	}
</style>

</head>
  
<body>
<div id="div1">
<div id="main-header">
	<div id="page_bar" class="page_bar" style="background-color:#c6dde9">
	   <div class="top_bar clearfix">
			<p>
	            <span id="toppar"> YC00003 欢迎登录，当前版本<a href="javascript:versionDetail();">version 3.1.2</a></span>
	        </p>
			<div class="hotkey">
				<span id="showTime"></span>&nbsp;<span class="fc-72">2016年6月21日 星期二 17:37:21 |</span>&nbsp;<a href="javascript:toExit();">注销</a>
			</div>
		</div>
	</div>
	
	<div id="header">
		<div id="logo" class="clearfix">
			<table width="100%">
				<tr>
					<td><h1 class="fl"></h1></td>
					<td align="center"><font size="7" face="华文行楷" color="#000066"><b>统一权限平台</b></font></td>
					<td><h2 class="fr"></h2></td>
				</tr>
			</table>
		</div>
		<div id="nav">
			<ul class="clearfix">															
				<li id="${ffunc.frontfunId}"><a class="nav_a" href="main-header.html">应用入口</a> 
				</li>																										
							
				<li id="${ffunc.frontfunId}"><a class="nav_a" href="">流程审批</a> 
								<dl>									
								 		<dd><a href="todo_list.html" style="font-weight:normal">待办事项 </a></dd>								
								</dl>	
				</li>				 			
							
				<li id="${ffunc.frontfunId}"><a class="nav_a" href="javascript:void(0);">变更申请</a> 
				 				<dl>									
								 		<dd><a href="staffstatusimprove.html" style="font-weight:normal">员工状态变更申请 </a></dd>								
								</dl>		
				</li>
				
				<li id="${ffunc.frontfunId}"><a class="nav_a" href="javascript:void(0);">信息查询</a> 
				 				<dl>								
								 		<dd><a href="queryUserInfo.html" style="font-weight:normal">人员信息查询 </a></dd>																
								 		<dd><a href="allAccountInfoDisplayData.html" style="font-weight:normal">全部账户信息查询 </a></dd>								
								</dl>		
				</li>
				
				<li id="${ffunc.frontfunId}"><a class="nav_a" href="javascript:void(0);">系统管理</a> 
				 				<dl>									
								 		<dd><a href="" style="font-weight:normal"> </a></dd>								
								</dl>		
				</li>
				
				<li>
					<a class="nav_a" href="#">个人设置</a>
					<dl>					
						<dd><a href="#" onclick="gotoRevEmployee()" style="font-weight:normal">修改员工信息</a></dd>						
						<dd><a href="" style="font-weight:normal">修改密码</a></dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
	
</div>
<div id=con align="center">
	<div id="tagContent0" style="display: block;height:100%;padding-top:20px" align="center">
		<table border="1" width="100%" bordercolor="#b7b6b6" style="background-color:#FFFFFF;width:900px">
			<tr>
				<td height="31px" align="right" class="seqselect">
					<select id="iconMessage" name="iconMessage" style="border:1px solid #9a9a9a;width:132px;height:23px;" onchange="repeat()">
						<option value="">选择视图:</option>
						<option value="1">图标</option>
						<option value="2">详细信息</option>
					</select>
					<input id="appName" type="text" name="appName" value="" style="border:1px solid #9a9a9a;width:130px;height:21px" />
					<a title="搜索" >
						<img src="../images/search.png" width="23px" height="23px" style="cursor:pointer" />
					</a>
					<a title="刷新应用图标" name="removeIsproductwebCache">
						<img src="../images/refresh1.jpg" width="21px" height="22px" style="cursor:pointer;padding-right:7px" />
					</a>
				</td>
			</tr>
			<tr id="icon1">
				<td style="padding-top:7px">
					<div>
						<UL>
								<LI style="text-align:center;width:112px;height:90px">
									<a style="color:#534872" href="" name="applist">
										<img src="../images/applogo/32.jpg" 
										    height="40px" width="40px"><br/>买单吧系统
									</a>
								</LI>																					
						
					  	</UL>
					  </div>
	  			</td>
			</tr>	
	  	</table>
	</div>
</div>
</div>
<script>
$(function(){
	$("#nav ul li").each(function(){
		$(this).hover(
			function(){
				if(typeof($(this).find("dl")) != "undefined"){
					$(this).find("dl").show();
				}
			},
			function(){
				if(typeof($(this).find("dl")) != "undefined"){
					$(this).find("dl").hide();
				}
			}
		);
	});
});

</script>
</body>
</html>
