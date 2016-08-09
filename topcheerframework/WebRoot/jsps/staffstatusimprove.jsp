<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>员工状态调整界面</title>
<link href="../css/global.css" rel="stylesheet" type="text/css" />
<link href="../css/tags.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.9.1.js"  type="text/javascript"></script>
<script type="text/javascript" src="../js/divstyle2.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery.alertWindow.js" charset="UTF-8"></script>

<link href="../css/mymain.css" rel="stylesheet" type="text/css" />
<link href="../css/valid.css" rel="stylesheet" type="text/css" />
<link href="../css/tab.css" rel="stylesheet" type="text/css" />
<style type="text/css">

	.pagelist {
		padding: 10px
	}

	.pagelist a {
		overflow: hidden;
		display: inline;
		padding: 4px;
		text-decoration: none;
		color: #333;
		border: 1px solid #ebebeb;
	}
	
	.pagelist a:hover,.pagelist strong {
		border: 1px solid #ffd375;
		color: #f26101;
		padding: 4px;
	}
	
	.basic-update2 {
		background: url('<%=request.getContextPath()%>/images/modify.png') no-repeat;
		background-position: center;cursor: pointer;
		float: left; width: 25px ;height: 25px;
		margin-left:30px;
	}
	
	#div1{ 
		font-family: "宋体","微软雅黑","Consolas","Courier New","Arial","Coruier","mono","serif";
	}
	

</style>
<script type="text/javascript">
function submitWorkflow(){
	var genderSelect = document.getElementById("genderValue");
	var index = genderSelect.selectedIndex ;
	var gender = genderSelect.options[index].text;
	alert(gender);
	document.getElementById("gender").value = gender;
	document.getElementById("form1").setAttribute("gender",gender);
	document.getElementById("form1").submit();
	}
function getUserinfo(){
	//alert("getUserinfo");
	//document.getElementById("hiddenActionNum") .value = "queryUserInfo";
	var queryUserInfo = $("#loginAccountCondition").val();
	$.ajax( {
		url : "/topcheerframework/commonAjax",
		data : {
			actionNum : 'queryUserInfo',
			queryUserinfo_loginAccount : queryUserInfo
		},
		success : function(result) {
			$("#loginAccount").val(result.userinfo.loginAccount);
			$("#userCode").val(result.userinfo.userCode);
			$("#userName").val(result.userinfo.userName);
			$("#genderValue").val(result.userinfo.gender);
			$("#userIdTypeValue").val(result.userinfo.userIdTypeValue);
			$("#userIdNoValue").val(result.userinfo.userIdNoValue);
			$("#workStatusValue").val(result.userinfo.workStatusValue);
			$("#positionName").val(result.userinfo.positionName );
			$("#userOrganization").val(result.userinfo.userOrganization);
			$("#entryDate").val(result.userinfo.entryDate);
			$("#entryYear").val(result.userinfo.entryYear);
			$("#belongAminOrg").val(result.userinfo.belongAminOrg);
			$("#userType").val(result.userinfo.userType);
			$("#allowNetwork").val(result.userinfo.allowNetwork);
			$("#oa").val(result.userinfo.oa);
			$("#handphone").val(result.userinfo.handphone);
			$("#email").val(result.userinfo.email);
			$("#emergencyPerson").val(result.userinfo.emergencyPerson);
			$("#contactphone").val(result.userinfo.contactphone);
			$("#contactaddress").val(result.userinfo.contactaddress);
			$("#emergencyTel").val(result.userinfo.emergencyTel);
			$("#wbCode").val(result.userinfo.wbCode);
			$("#CName").val(result.userinfo.CName);
			$("#officefax").val(result.userinfo.officefax);
			$("#officetel").val(result.userinfo.officetel);
			$("#agentId").val(result.userinfo.agentId);
		}
	});}
	

	
</script>
</head>
<body style="min-width:1000px" id="body">


<!-- 菜单部分开始 -->

<div id="div1" onload="startTime()">
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
</div>
<!-- 菜单部分结束 -->




<div style="height: 25px;padding-top:7px">
<span style="margin-left: 15%"><font style="font-size:14px">当前位置:<a href=""  class="color">变更申请</a>-->员工状态变更申请</font></span>
</div>
<div id=con>
	
<div id=tagContent0 style="display: block">
<div id="mainframe">

<div id="centerInfo" >
<div class="change-information" id="change-information" >
<form id="form1" action="/topcheerframework/commonAction" method="post" >
<input id="hiddenActionNum" type="hidden" name="actionNum" value = "submitWorkflow">
<table>
	<tr>
		<td align="right">OA单号：</td><td><input type="text" id="oaRecordIdManu" name="oaRecordIdManu" size="15" style="border:1px solid #9a9a9a;height: 21px;width:150px;" />&nbsp;</td>
		<td>维护类型：</td>
		<td>
			<select  id="manuMainTainType" name="manuMainTainType"  style="border:1px solid #9a9a9a;height:23px">
				<option value="0">----请选择----</option>
				<option value="ADD">新增</option>
				<option value="UPD">修改</option>
				<option value="DEL">删除</option>
				<option value="RSET">密码重置</option>
			</select>
			<input type="button"  value="重置" class="btn01" />
			<input type="button"  value="附件上传" class="btn01" />
		</td>
	</tr>
</table>
	<fieldset class="panel">
	<legend><b>明细区</b></legend>
	<div class="tab_box">
	<div class="tab_menu">
	<input id="auth-tabmenuPara" type="hidden" name="auth-tabmenuPara" value = "F"/>
	<ul>
		<li id="user-tabmenu">员工基本信息</li>
		<li class="selected" id="auth-tabmenu">权限信息</li>
		<li class="selected" id="staffstatusimprove-tabmenu">员工状态调整</li>
		<li class="selected" id="backup-tabmenu">备援信息</li>
		<li class="selected" id="custompro-tabmenu">扩展属性信息</li>
		<li class="selected" id="pwdreset-tabmenu">密码重置</li>
	</ul>
	</div><!-- tab_menu end-->
	<div class="frame">
	<div id="user-information" class="table-a">
	<font style="font-family: 隶书;font-size: 20px;">员工基本信息</font>
	<hr/>
	<table id="queryCondition-tab"  class="detailTB" >
		<tr>
			<td>员工账号：<input id="loginAccountCondition" name="queryUserinfo_loginAccount" type="text" class="input01" />
			<input type="button" onclick="getUserinfo();" value="查询" class="btn01" /></td>
		</tr>
	</table>
	<table id="user-information-table1" class="detailTB2">
		<tr>
			<td align="right" style="padding-right:10px;width:20%">员工账号：</td>
			<td style="width:30%"><input type="text" id="loginAccount" name="loginAccount" />
			<input id="userId" name="loginAccount1" type="hidden" /><label style="color:red">*必填</label></td>
			<td align="right" style="padding-right:10px;width:20%">员工工号：</td>
			<td style="width:30%"><input id="userCode" name="userCode" type="text" maxlength="20" /></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px">员工姓名：</td><td><input id="userName" name="userName" type="text" maxlength="50" />
			<label style="color:red">*必填</label></td>	
			<td align="right" style="padding-right:10px;">性别：</td>
			<td>
			<select id="genderValue" name="genderValue" >
				<option value="M">男</option>
				<option value="F">女</option>
			</select>
			<input type="hidden" id="gender" name="gender"></input>
			</td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">证件类型：</td>
			<td>
			<select id="userIdTypeValue" name="userIdTypeValue" >
				<option value="1">身份证</option>
				<option value="2">港澳通行证</option>
				<option value="3">军官证</option>
				<option value="4">台胞证</option>
				<option value="5">身港澳居民来往内地通行证</option>
				<option value="6">护照</option>
				<option value="7">其它</option>
			</select>
			<input id="userIdType" name="userinfo.userIdType" type="hidden" />
			</td>
			<td align="right" style="padding-right:10px;">证件号码：</td><td><input id="userIdNoValue" name="userIdNoValue" type="text" maxlength="30" />
			<input id="userIdNo" name="userIdNo" type="hidden" maxlength="30" />
			<label style="color:red">*必填</label></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">在职状态：</td>
			<td>
			<select id="workingStatusValue" name="workingStatusValue" >
				<option value="00">报道</option>
				<option value="01">在职</option>
				<option value="02">离职</option>
			</select>
			<input id="workingStatus" name="workingStatus" type="hidden" />
			</td>
			<td align="right" style="padding-right:10px;">工作状态：</td>
			<td>
			<select id="workStatusValue" name="workStatusValue">
				<option value="1">在岗</option>
				<option value="2">预约离岗</option>
				<option value="3">离岗</option>
				<option value="4">长病假</option>
				<option value="5">产假</option>
				<option value="6">轮岗</option>
				<option value="7">备援</option>
				<option value="8">脱岗备援</option>
				<option value="9">跨部门备援</option>
				<option value="10">兼任</option>
				<option value="11">临时管制</option>
				<option value="12">跨部门异动</option>
				<option value="13">报道</option>
			</select>
			</td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">HR岗位名称：</td><td><input id="positionName"  name="positionName" type="text" maxlength="100" /></td>
			<td align="right" style="padding-right:10px;">编制：</td><td><input id="userOrganization" name="userOrganization" type="text" maxlength="100" /></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">入职时间：</td><td><input id="entryDate" name="entryDate" type="text"/></td>
			<td align="right" style="padding-right:10px;">入职年限：</td><td><input id="entryYear"  name="entryYear" type="text"/></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">行政机构：</td><td><input id="belongAminOrg" name="belongAminOrg" type="text" maxlength="20" /></td>
			<td align="right" style="padding-right:10px;">用户类型：</td>
			<td>
				<select id="userType" name="userType" >
					<option value="1">请选择</option>
					<option value="2">分行人员</option>
					<option value="3">外包公司人员</option>
					<option value="4">卡中心人员</option>
					<option value="5">异地中心人员</option>
				</select><label style="color:red">*必填</label></td>
		</tr>
	</table><!--user-information-table1 end-->
	<table id="user-information-table2" class="detailTB2">
		<tr>
			<td align="right" style="padding-right:10px;width:20%">允许访问网段：</td>
			<td style="width:30%">
				<select id="allowNetwork" name="allowNetwork">
					<option value="1">请选择</option>
					<option value="2">办公网段</option>
					<option value="3">办公网段及外网网段</option>
					<option value="4">生产网段</option>
					<option value="5">办公及生产网段</option>
					<option value="6">办公、生产及外网网段</option>
				</select>
			</td>
			<td align="right" style="padding-right:10px;width:20%">OA：</td>
			<td style="width:30%"><input id="oa" name="oa" type="text"/></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">手机号：</td><td><input id="handphone" name="handphone" type="text" maxlength="45" />
			<label style="color:red">*必填</label>
			</td>
			<td align="right" style="padding-right:10px;">邮箱：</td><td><input id="email" name="email" type="text" maxlength="45" /></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">联系电话：</td><td><input id="contactphone" name="contactphone" type="text" maxlength="20" /></td>
			<td align="right" style="padding-right:10px;">联系地址：</td><td><input id="contactaddress"  name="contactaddress" type="text" maxlength="80" /></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">紧急联系人：</td><td><input id="emergencyPerson" name="userinfo.emergencyPerson" type="text" maxlength="40" /></td>
			<td align="right" style="padding-right:10px;">紧急联系电话：</td><td><input id="emergencyTel" name="emergencyTel" type="text" maxlength="20" /></td>
		</tr>
		<tr id="wbCompanyTr" style="display: none;">
			<td align="right" style="padding-right:10px;">外包公司代码：</td>
			<td>
				<select id="wbCode" name="wbCode" ></select>
			</td>
			<td align="right" style="padding-right:10px;">外包公司名称：</td>
			<td>
				<input id="CName" name="CName" type="text"  maxlength="150" />
			</td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">办公传真：</td>
			<td><input id="officefax" name="officefax" type="text" maxlength="20" /></td>
			<td align="right" style="padding-right:10px;">办公电话：</td>
			<td><input id="officetel" name="officetel" type="text" maxlength="20" /></td>
		</tr>
		<tr>
			<td align="right" style="padding-right:10px;">AgentId：</td>
			<td colspan="3"><input id="agentId" name="agentId" type="text" maxlength="20" /></td>
		</tr>
	</table><!--user-information-table2 end-->
	</div><!-- user-information end -->
	
	<div id="outherity-information" style="display:none;">
	<font style="font-family: 隶书;font-size: 20px;">权限信息</font>
	<hr/>
	<div align="center">
	<a class="basic-add" title="添加权限" id="addpermission" name="add" onclick="addAuthInfo()" style="display:block;padding-top:10px"><img src="../images/add.jpg" width="25px" /></a>
	<div id="authority-list" style="display:block;padding-top:5px">
		<table width="96%">
			<tr class="table01">
				<td width="22%">应用系统</td>
				<td width="25%">所属组织架构</td>				
				<td width="21%">角色</td>
				<td width="20%">应用系统账号</td>
				<td width="12%">操作 </td>
				<td style="display: none;">用户id</td>
			</tr>
		</table>
		<table id="authority-list1" width="96%"  style="display:none;">
			<tr class="table03">
				<td width="22%">买单吧系统</td>
				<td width="25%">运营管理部</td>				
				<td width="21%">买单吧管理员</td>
				<td width="20%">admin</td>
				<td width="12%">新增</td>
				<td style="display: none;">用户id</td>
			</tr>
		</table>
		</table>
	</div><!-- authority-list --></div>
	</div><!-- outherity-information end -->
	
	<div id="staffstatusimprove-information" style="display:none;">
	<font style="font-family: 隶书;font-size: 20px;">员工状态调整</font>
	<hr/>
	<div style="padding-top:5px">
		<table id="staffstatusimprove-table" border="1" width="100%" style="border:1px solid #9a9a9a;height:25px;">
			<tr style="border:1px solid #9a9a9a;height:25px;">
				<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">员工账号：</td>
				<td style="padding-left:5px"><input type="text" id="oldLoginAccount" style="border:1px solid #9a9a9a;height:21px;width:150px" name="oldUserInfo.loginAccount" disabled="disabled"><input id="oldUserId" name="oldUserInfo.id.userId" type="hidden" /></td>
				<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">员工姓名：</td>
				<td style="padding-left:5px"><input id="oldUserName" name="oldUserInfo.userName" style="border:1px solid #9a9a9a;height:21px;width:150px" type="text" disabled="disabled"/></td>
			</tr>
			<tr>
				<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">原工作状态：</td>
				<td style="padding-left:5px"><input id="oldWorkstatus" name="oldUserInfo.workstatus" style="border:1px solid #9a9a9a;height:21px;width:150px" disabled="disabled"></td>
				<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">新工作状态：</td>
				<td style="padding-left:5px"><select id="newworkStatus" name="newworkStatus" style="border:1px solid #9a9a9a;height:21px;width:152px" onchange="changeWorkStatus();"></select></td>
			</tr>
        	<tr id="newaplt" style="display: none;border:1px solid #9a9a9a;height:25px;">
	        	<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">应用系统：</td>
	        	<td style="padding-left:5px"><select id="newAppId" name="newUserRole.appId" style="border:1px solid #9a9a9a;height:21px;width:152px" onchange="getOrg('newAppId','newUserRole.id.orgId','')"></select></td>
	        	
	        	<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">应用系统账号：</td>
	        	<td style="padding-left:5px"><input id="newLocalAccount" name="newUserRole.id.localAccount" style="border:1px solid #9a9a9a;height:21px;width:150px" type="text" onblur="checkLocalAccountEmpty('newLocalAccount');"/><label style="color:red">*必填</label></td>
        	</tr>
        	<tr id="newogre" style="display: none;border:1px solid #9a9a9a;height:25px;">
	        	<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">所属组织架构：</td>
	        	<td style="padding-left:5px"><select id="newOrgId" name="newUserRole.id.orgId" style="border:1px solid #9a9a9a;height:21px;width:152px" onchange="getRole('newAppId','newOrgId','newUserRole.id.roleId')"></select></td>
	        	<td align="right" style="border:1px solid #9a9a9a;background-color:#c6dde9;height:25px;">角色：</td>
	        	<td style="padding-left:5px"><select id="newRoleId" name="newUserRole.id.roleId" style="border:1px solid #9a9a9a;height:21px;width:152px"></select></td>
        	</tr>
		</table>
		</div>
	</div><!-- staffstatusimprove-information end -->
	

	<div id="backup-information" style="display:none;">
	<font style="font-family: 隶书;font-size: 20px;">备援角色信息</font>
	<hr/>
	<div id="backup-list" style="display:block;layout-flow : horizontal;padding-top:5px">
	 	<table width="100%">
			<tr class="table01">
				<td style="font-weight:bold;"  width="20%">应用系统</td>
				<td style="font-weight:bold;"  width="25%">所属组织架构</td>				
				<td style="font-weight:bold;"  width="20%">角色</td>
				<td style="font-weight:bold;"  width="25%">应用系统账号</td>
				<td style="font-weight:bold;"  width="10%">操作 </td>
				<td style="display: none;">用户id</td>
			</tr>
	 	</table>
	 	<table id="backuprole-table" width="100%" class="table03"></table>
	</div><!-- backup-list-->
	</div><!-- backup-information end -->
	
	<div id="custompro-information" style="display:none;">
		<font style="font-family: 隶书;font-size: 20px;">扩展属性信息</font>
		<br>
		<hr/>
		<div style="padding-top:5px">
		<table>
			<tr>
	        	<td height="30px">应用系统：</td>
	        	<td>
		        	<select id="appCustomlist" name="appCustomlist" style="border:1px solid #9a9a9a;height:23px;width:152px" onchange="changeCustomAppInfo(this.options[selectedIndex].value)">
		        	</select>
	        	</td>
	       	</tr>
	       	<tr>
	       		<td height="30px">应用系统账号：</td>
	       		<td>
	       			<select id="localAccountList" name="localAccountList" style="border:1px solid #9a9a9a;height:23px;width:152px" onchange="changeLocalAccount(this.options[selectedIndex].value)"></select>
	       		</td>
	       	</tr>
		</table>
		<table id="usercustom-table"></table>
		</div>
	</div>
	
	<div id="pwdreset-information" style="display:none;">
	<font style="font-family: 隶书;font-size: 20px;">密码重置信息</font>
	<hr/>
	<a class="basic-add" title="添加应用系统" id="addAppSystem" name="addAppSystem" style="display:block;padding-top:10px"></a>
	<div id="pwdreset-list" style="display:block;padding-top:5px">
		<table border="1" width="96%">
			<tr class="table01">
				<td style="display:none;"></td>
				<td style="font-weight:bold;" width="35%">应用系统</td>
				<td style="font-weight:bold;" width="40%">应用系统账号</td>
				<td style="font-weight:bold;" width="25%">操作</td>
			</tr>
		</table>
		<table id="appSystemTable" name="appSystemTable" border="1" width="96%"></table>
	</div><!-- pwdreset-list -->
	</div><!-- pwdreset-information end -->
	
	</div>
	</div><!-- tab_box end -->
	<div id="hiddens">
		<input type="hidden" value="${workflowResponse.retCode }" name="workflowResponse.retCode" id="retCode"/>
		<input type="hidden" value="${workflowResponse.instanceId }" name="workflowResponse.instanceId" id="instanceId"/>
		<input type="hidden" value="${workflowResponse.taskId }" name="workflowResponse.taskId" id="taskId"/>
		<input type="hidden" value="${recordId }" name="recordId" id="recordId"/>
		<input type="hidden" value="" name="uploadattachedFileName" id="uploadattachedFileName"/>
		<input type="hidden" value="${message}" name="message" id="message"/>
		<input type="hidden" value="" id="addOrUpd" />
		<input type="hidden" name="applyType" id="applyType" value="${applyType}"/>
		<input type="hidden" value="" name="uploadAccount" id="uploadAccount"/>
	</div>
	</fieldset>
	</form>
</div><!--changeinformation end  -->

<div id="addtolist" style="display:block;">
	<div align="center">
	<a id="addUserAllInfoToList" name="addUserAllInfoToList" style="text-decoration:none;cursor:hand;">
		<img id="addlistImage" alt="添加至列表" src="../images/add2list.jpg" onclick="addUserToList();">
	</a>
	</div>
	<fieldset class="panel">
	<legend><b>汇总区</b></legend>
	<table width="100%" height="25px">
		<tr class="table01">
			<td width="22%">员工工号</td>
			<td width="22%">登录账号</td>
			<td width="22%">员工姓名</td>
			<td width="21%">工作状态</td>
			<td width="13%">操作</td>
		</tr>
	</table>
	<table id="staffListInfo" width="100%" >
		<tr class="table03">
			<td align="center" width="22%">USER_CODE</td>
			<td align="center" width="22%">LOGIN_ACCOUNT</td>
			<td align="center" width="22%">USER_NAME</td>
			<td align="center" width="21%">WORK_STATUS</td>
			<td align="center" width="13%">
			 	<a class="basic-update2" title="修改"  name="upd"></a>
             	<a class="basic-delete" title="删除"  name="del" ></a>
			</td>	
		</tr>
	</table>
	<br>
	共1页/1条记录   <input type="button" value="首页"/> 上页  1 下页 <input type="button" value="末页"/> 跳转至<input type="text" value="1"style="width:20px">页  <input type="button" value="go"/>
	<div class="pagelist" id="pageList">
    </div>
    <div id="comment-list" style="display:block;">
     	<font style="font-family: 隶书;font-size: 20px;">审批意见</font>
     	<table id="shenpi-table" width="100%" height="25px">
		 	<tr class="table01">
		 		<td width="10%">审批人</td>
		 		<td width="20%">审批结果</td>
		 		<td width="35%">审批意见</td>
		 		<td width="25%">审批时间</td>
		 		<td>任务名称</td>
		 	</tr>
		 	
			<tr class="table03">
				<td>YC00003</td>
				<td width="15%" align="center">同意</td>
				<td width="35%"></td>
				<td width="25%">2016/06/22 13:34:43</td>
				<td>一级审批</td>
			</tr>
		</table>
		<br>
	</div>
	<div>
		<form id="shenpi_form">
			<table border="0" width="100%">
				<tr style="display:none;">
	        		<td>
	        			
	        		</td>
	        	</tr>
				<tr class="table02">
					<td width="5%">附言:</td>
					<td width="95%"><textarea rows="5" cols="120" style="width:100%" id="examineOpinion" name="comment.examineOpinion"></textarea> </td>
				</tr>
			</table>
		</form>
     </div>
	<div align="center">
		<br/>
		<input type="button" value="流程发起" id="submitWorkflow" class="btn01" />
			&nbsp;&nbsp;<input type="button" value="单据作废" id="toCancelRecord" class="btn01" />
	</div>
	</fieldset>
</div><!-- addtolist -->


<div id="addpanel" class="addpanel" style="display:none;position: absolute;top: 200px; left: 480px;">
    <h3 id="title" style="cursor:move;">添加权限</h3>

    <form id="form" method="post">
    	<!-- <div class="propertypanel"> -->
    	<div>
         <table border="0">
        	<tr>
        	<td><br />应用系统：</td>
        	<td>
        		<span style="position:absolute;border:0pt solid #c1c1c1;overflow:hidden;width:166px;">
        			<select id="applist" name="applist" style="width:166px;margin:0px;" onchange="getOrg('applist','orglist','')"></select>
        		</span>
    			<span style="position:absolute;border:0pt solid #c1c1c1;border-left:0pt solid #c1c1c1;border-bottom:0pt solid #c1c1c1;">
		        	<input type="text" id="appQry" name="appQry" value="---请选择---" onblur="loadAppInfo('applist',true)" onclick="appNameReset()" />
				</span>
        	</td>
        	</tr>
        	<tr><td><br />应用系统账号：</td><td><br /><input id="localAccount" type="text" /><div id = "vaLocalAccount" class="Validform_checktip divstr" style="display:none;width:160px">请输入有效的应用系统账号</div></td>
        	</tr>
        	<tr>
        	<td><br />所属组织架构：</td>
        	<td>
        		<span style="position:absolute;border:0pt solid #c1c1c1;overflow:hidden;width:166px;">
        			<select id="orglist" name="orglist" style="width:166px;margin:0px;" onchange="getRole('applist','orglist','rolelist')"></select>
        		</span>
      			<span style="position:absolute;border:0pt solid #c1c1c1;border-left:0pt solid #c1c1c1;border-bottom:0pt solid #c1c1c1;">
		        	<input type="text" id="orgQry" name="orgQry" value="" onblur="getOrg2('applist','orglist')" onclick="orgNameReset()" />
				</span>
        	</td>
        	</tr>
        	<tr>
        	<td><br />角色：</td>
        	<td>
        		<span style="position:absolute;border:0pt solid #c1c1c1;overflow:hidden;width:166px;">
        			<select id="rolelist" style="width:166px;margin:0px;" name="rolelist" onchange="getRoleName()"></select>
        		</span>
      			<span style="position:absolute;border:0pt solid #c1c1c1;border-left:0pt solid #c1c1c1;border-bottom:0pt solid #c1c1c1;">
		        	<input type="text" id="roleQry" name="roleQry" value="" onblur="getRole2('applist','orglist','rolelist')" onclick="roleNameReset()" />
				</span>
        	</td>
        	</tr>
        </table>
        </div>
        <br/>
        <br/>
        <div style="text-align: center;">
        	<input type="button" value="确定"  id="confirmUserRoleButton" class="btn"/>
            <input type="button" value="取消" class="btn" id="cancelUserRoleButton"/>
            <div style="display:none;"><input type="button" value="确定" id="panelSubmit_hidden" class="btn"/></div>
        </div>
    </form>
</div>

<div id="pwdresetPanel" class="addpanel" style="display:none; position:absolute; top:200px; left:480px;">
    <h3 id="titleConfig" style="cursor:move;">密码重置</h3>
	<form id="pwdresetForm" method="post">
		<!-- <div class="propertypanel"> -->
    	<div>
			<table border="0">
				<tr>
		        	<td>应用系统：</td>
		        	<td>
		        		<select id="appSystemList_pwd" name="appSystemList_pwd"></select>
		        	</td>
	        	</tr>
	        	<tr>
		        	<td>应用系统账号：</td>
		        	<td>
		        		<select id="localAccountList_pwd" name="localAccountList_pwd"></select>
		        	</td>
	        	</tr>
	        </table>
        </div>
        <br/>
        <br/>
        <div style="text-align: center;">
        	<input type="button" value="确定"  id="confirmPwdresetButton" class="btn"/>
            <input type="button" value="取消" class="btn" id="cancelPwdresetButton"/>
            <div style="display:none;"><input type="button" value="确定" id="pwdresetPanelSubmit_hidden" class="btn"/></div>
        </div>
    </form>
</div>
	</div>
	<div id="uploadfile-information" style="display:none">
		
		<form id="uploadfileform" style="display: none" method="post" enctype="multipart/form-data" onsubmit="">
			<br>
			<table>
				<tr>
					<td align="right">OA单号：</td><td><input type="text" id="oaRecordIdBat" name="oaRecordIdBat" style="border:1px solid #9a9a9a;height:21px;width:150px" /></td>
					<td>&nbsp;维护类型:</td>
					<td>
						<select id="batMainTainType" name="batMainTainType" onchange="changeMainTainType('batMainTainType');" style="border:1px solid #9a9a9a;height:23px;width:152px">
							<option value="0">----请选择----</option>
							<option value="ADD">新增</option>
							<option value="UPD">修改</option>
							<option value="DEL">删除</option>
							<option value="RSET">密码重置</option>
						</select>
					</td>
				</tr>
			</table>

		</form>

	</div><!-- #uploadfile-information end -->	


</div><!-- #mainframe end -->
</div>
</div>
<SCRIPT type=text/javascript>	
	//TAB页切换
	$(function(){
	    var $div_li =$("div.tab_menu ul li");
	    $div_li.click(function(){
			$(this).removeClass("selected")            //当前<li>元素高亮
				   .siblings().addClass("selected");  //去掉其它同辈<li>元素的高亮
            var index =  $div_li.index(this);  // 获取当前点击的<li>元素 在 全部li元素中的索引。
			$("div.frame > div")   	//选取子节点。不选取子节点的话，会引起错误。如果里面还有div 
					.eq(index).show()   //显示 <li>元素对应的<div>元素
					.siblings().hide(); //隐藏其它几个同辈的<div>元素
					//tag++;
					//tag= tag%2;
					//alert(tag);
		}).hover(function(){
			$(this).addClass("hover");
		},function(){
			$(this).removeClass("hover");
		})
	});
</SCRIPT>

</body>
</html>