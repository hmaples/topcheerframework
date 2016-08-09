	function addAuthInfo(){
		var showPanel = true;
		var appListName = 'applist';
		var selectAppObj = $("select[name='"+appListName+"']");
		selectAppObj.empty();
		var orgListName = 'orglist';
		var selectOrgObj = $("select[name='"+orgListName+"']");
		selectOrgObj.empty();
		var roleListName = 'rolelist';
		var selectRoleObj = $("select[name='"+roleListName+"']");
		selectRoleObj.empty();
		$("#localAccount").val('');
		$("#appQry").val("---请选择---");
		$("#orgQry").val("---请选择---");
		$("#roleQry").val("---请选择---");
		$("#orglist").removeDisabled();//下拉框解锁
		$("#orgQry").removeDisabled();
		loadAppInfo('applist',showPanel);
	}
	//加载应用列表信息
	function loadAppInfo(appListName,showPanel){
		var appQry;
		if(null != $.trim($("#appQry").val()) && "---请选择---" != $.trim($("#appQry").val())) {
			appQry = $.trim($("#appQry").val());
		} else {
			appQry = "";
		}
		var urlPath = "/topcheerframework/commonAjax";
		var loginAccount = $("#loginAccount").val();
		$.ajax({  
		    async : false,  
		    cache: false,  
		    type: 'POST',  
		    dataType : "json",  
		    url: urlPath,//请求的action路径    
		    data:{actionNum : 'queryAppInfo'}, 
		    error: function () {//请求失败处理函数  
		        //alert('请求失败'); 
		    },  
		    success:function(result){ //请求成功后处理函数。
		    	//DATA需要从后台传过来
		    	var data = result.list; 
		    	//data='[{"appName":"A系统","appId":"APPID1"}, {"appName":"B系统","appId":"APPID2"}, {"appName":"C系统","appId":"APPID3"}]'; 
		    	//var jsonArray = eval('('+data+')');
		    	var jsonArray = data;
		    	//alert(jsonArray[0].appName);
		    	//加载应用列表集合
		    	var appList = jsonArray;
		    	var selectObj = $("select[name='"+appListName+"']");
		    	selectObj.empty();
		    	selectObj.append( '<option value="'+"0"+'">'+"---请选择1---"+'</option>');
		    	if(null != appList && appList.length>0) {
		    		if(appQry != "") {
		    			for(var i=0;i<appList.length;i++) {
		    				if(appList[i].appName.indexOf(appQry) != -1) {
		    					idcardElement= '<option value="'+appList[i].appId+'">'+appList[i].appName+'</option>';
				    			selectObj.append(idcardElement);
		    				}
			    		}
		    		} else {
		    			for(var i=0;i<appList.length;i++) {
	    					idcardElement= '<option value="'+appList[i].appId+'">'+appList[i].appName+'</option>';
			    			selectObj.append(idcardElement);
			    		}
		    		}
			    }
		    	if(showPanel){
					panelchange("addpanel", "title");
		    		$("#addpanel").show();
		    	}
		    }
		});	
	}
	
	/**
	* 设置禁用
	**/
	$.fn.setDisabled=function(){
		$(this).attr("disabled","disabled");
	};
	
	/**
	* 解除禁用
	**/
	$.fn.removeDisabled=function(){
		$(this).removeAttr("disabled");
	};
	
	//添加权限面板确定
	$(function(){
		$("#confirmUserRoleButton").click(function(){
			$("#appQry").attr("disabled",false);
			$("#applist").attr("disabled",false);
			var localAccount=$("#localAccount").val();
			var isSuccess =  checkLocalAccount();
			var length=0;
		 	if(!isSuccess){
		 		alert("请输入有效的应用系统账号");
		 		return false;
		 	}
			var userId=$("#userId").val();
			var appId=$("#applist").val();
			var orgId =$("#orglist").val();
			var roleId=$("#rolelist").val();
			var manuMainTainType = $("#manuMainTainType").val();
			var appModel;
			var urlPath = "${request.contextPath}" + "/staffStatusImproveAction.action";
			/*alert(333);
			$.ajax({  
			    async : false,  
			    cache: false,  
			    type: 'POST',  
			    dataType : "json",  
			    url: urlPath,//请求的action路径 
			    data:{actionKbn:"queryAppModelByAppId", 
			    manuMainTainType:manuMainTainType,
			    "userrole.id.userId":userId,
		   		"userrole.id.recordId":$("#recordId").val(),
		   		"userrole.appId":appId},
			    error: function () {//请求失败处理函数  
			    	alert("失败");
			    },
			    success:function(data){ //请求成功后处理函数。
			    	if(data == 'true'){
    					appModel = 2;
    				}
			    }
			});
			if(appModel == "2") {
				alert($("#appQry").val() + "只能有一个角色");
				return false;
			}
			
			if(null == appId || '0' == appId) {
				alert("请选择应用系统！");
				return false;
			}
			var isHasSpace = checkTextSpace(localAccount);
			if(isHasSpace){
				alert("您输入的应用系统账号中含有空格，请检查!");
				$("#localAccount").focus();
				return false;
			}
			if("" == localAccount||null == localAccount || 'undefined' == localAccount) {
			 	alert("应用系统账号不能为空!");
			 	return false;
			}
			if(null == orgId || '0' == orgId) {
				alert("请选择所属组织架构！");
				return false;
			}
			if(null == roleId || '0' == roleId) {
				alert("请选择角色！");
				return false;
			}
			
			if('UPD' == manuMainTainType) {
				if(delUserAuthArry.length>0) {
					var n = delUserAuthArry.length;
		   			var delOrgId = delUserAuthArry[n-1].orgId.replace("QU|","");
			   		var delRoleId = delUserAuthArry[n-1].roleId.replace("QU|","");
			   		if(orgId == delOrgId && roleId == delRoleId) {
			   			alert("用户权限信息已存在，请重新选择！");
			   			return false;
			   		}
				}
			}
			var user = new UserBean(userId, appId, localAccount, orgId, roleId);
			if(!checkUserBean(user)) {
				alert("不能添加重复权限至列表！");
				return false;
			}
			
		   if('UPD' == manuMainTainType){
		   		roleId = 'UP|'+roleId;
		   		orgId = 'UP|'+orgId;
		   		appId = 'UP|'+appId;
		   }else{
		   		roleId = 'AD|'+roleId;
		   		orgId = 'AD|'+orgId;
		   		appId = 'AD|'+appId;
		   }   
		   var userRole = new USERROLE(userId,roleId,orgId,localAccount,appId);
		   userAuthArry.push(userRole);
		   var isBackUp = false;
		   //解析修改操作时删除的权限角色信息
		   for ( var m = 0; m < delUserAuthArry.length; m++) {
		   		var delId = delUserAuthArry[m].id;
		   		var delRoleId = delUserAuthArry[m].roleId;
		   		var delOrgId = delUserAuthArry[m].orgId;
		   		var delAppId = delUserAuthArry[m].appId;
		   		var delLocalAccount = delUserAuthArry[m].localAccount;
		   		setDelUserAuthInfo(delId, delRoleId, delOrgId, delAppId, delLocalAccount)
		   }
		  //解析修改操作时删除的备援角色信息
		   for ( var m = 0; m < delUsrBackUpRoleArry.length; m++) {
		   		isBackUp = true;
		   		var delId = delUsrBackUpRoleArry[m].id;
		   		var delRoleId = delUsrBackUpRoleArry[m].roleId;
		   		var delOrgId = delUsrBackUpRoleArry[m].orgId;
		   		var delAppId = delUsrBackUpRoleArry[m].appId;
		   		var delLocalAccount = delUsrBackUpRoleArry[m].localAccount;
		   		setDelelBackUpAuthInfo(delId, delRoleId, delOrgId, delAppId, delLocalAccount);
		   }
		   
		   if(isBackUp){
		   		delUsrBackUpRoleArry.pop();
		   		setNewBackUpAuthInfo(userRole, appModel);
		   }else{
			   //delUserAuthArry.pop();
			   var delId = '';
			   if(delUserAuthArry.length > 0) {
				   var n = delUserAuthArry.length;
		   		   delId = delUserAuthArry[n-1].id;
			   }
		   	   setNewUserAuthInfo(userRole, appModel, delId);
		   }*/
		   $("#addpanel").hide();
			/* 修改按钮解除无效状态start */
			var tableObj = $("#tab");
			tableObj.find("tr").each(function(i, _tr) {
				$(this).find("td").eq(4).find(":button").eq(0).attr("disabled", false);
			});
			/* 修改按钮解除无效状态end */
		   $("#authority-list1").show();
		});
	});

	function checkLocalAccount(){
		var muMtType = $("#manuMainTainType").val();
		$("#vaLocalAccount").hide();
		var isChcek = false;
		if("UPD" == muMtType){
			var urlPath = "/topcheerframework/commonAjax";
			$.ajax({  
			    async : false,  
			    cache: false,  
			    type: 'POST',  
			    dataType : "json",  
			    url: urlPath,//请求的action路径    
			    data:{actionNum : 'queryAppInfo'}, 
			    error: function () {//请求失败处理函数  
			        alert('请求失败'); 
			    },  
			    success:function(data){ //请求成功后处理函数。
			    	if("ERROR" == data){
			    		//alert("请输入有效的应用系统账号");
			    		$("#vaLocalAccount").show();
			    		isChcek =  false;
			    	}else{
			    		$("#vaLocalAccount").hide();
			    		isChcek =  true;
			    	}
			    }
			});
		}else{
			isChcek =  true;
		}	
		return isChcek;
	}
	
	function appNameReset() {
		$("#appQry").val('');
	}

	function orgNameReset() {
		$("#orgQry").val('');
	}

	function roleNameReset() {
		$("#roleQry").val('');
	}
	
	
	//加载机构下拉选项
	function getOrg(appListName, orgListName, orgId) {
		$("#appQry").val($("#applist option:selected").text());
		$("#orgQry").val("---请选择---");
		$("#roleQry").val("---请选择---");
		var urlPath = "/topcheerframework/commonAjax";
		var loginAccount ="测试账号";
		var appId = "XT104";
		var appModel = 2;
		var manuMainTainType = "UPD";
		if('UPD' != manuMainTainType){
			if('2' == appModel || 'XT104' == appId || 'XT118' == appId || 'XT226' == appId || "XT222" == appId || 'XT134' == appId || 'XT208' == appId || 'XT209' == appId) {
	    		$("#localAccount").val(loginAccount);
				document.getElementById('localAccount').readOnly = true;
				document.getElementById('localAccount').style.backgroundColor="#EBEBE4";
			} else {
				$("#localAccount").val('');
				document.getElementById('localAccount').readOnly = false;
				document.getElementById('localAccount').style.backgroundColor="#FFFFFF";
			}
		}
		var applyType = $("#applyType").val();
		var selectedLoginAccount = "测试账号";
		
		/** 清空角色列表 */
		var roleListName = "rolelist";
		var selectRoleObj = $("select[name='"+roleListName+"']");
		selectRoleObj.empty();
		/** 清空角色列表 */
	    $.ajax({  
		    async : false,  
		    cache: false,  
		    type: 'POST',  
		    dataType : "json",  
		    url: urlPath,//请求的action路径 
		   	data:{actionNum : 'queryOrgInfo'},
		    error: function () {//请求失败处理函数  
		        //alert('请求失败'); 
		    },  
		    success:function(result){ //请求成功后处理函数。
		    	var data = result.list;
		    	//var data = '[{"ORG_NAME":"机构一","ORG_CODE":"orgcode1","ORG_ID":"orgid1"},{"ORG_NAME":"机构二","ORG_CODE":"orgcode2","ORG_ID":"orgid2"},{"ORG_NAME":"机构三","ORG_CODE":"orgcode3","ORG_ID":"orgid3"}]';
		        var jsonArray = data;
		    	var orglistElement;
				var selectObj = $("select[name='"+orgListName+"']");
				selectObj.removeDisabled();//下拉框解锁
				$("#orgQry").removeDisabled();
				selectObj.empty();
				selectObj.append( '<option value="0">'+"---请选择---"+'</option>');
		    	for(var i=0;i<jsonArray.length;i++){
		    		/** 与数组中存储的appId orgId比对 */
		    		/*var count=0;
		    		if('2' == appModel) {
		    			$("#tab").find("input[name='appArray']").each(function() {
							var app = new Array();
		    				app = $(this).val().split("|");
		    				for(var i=0; i<app.length; i++) {
		    					if(app[i] == appId) {
									count+=1;
								}
		    				}
						});
		    		}
		    		if(userBeanArray.length != 0 && count != 0) {
			    		for(var j=0;j<userBeanArray.length;j++) {
			    			if(userBeanArray[j].appId == appId) {
			    				var arrOrgId = userBeanArray[j].orgId;
			    				if(arrOrgId == jsonArray[i].ORG_ID) {
			    					orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'" selected="selected">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
			    					$("#selectOrgValue").val(arrOrgId);
									getRole("applist", "selectOrgValue", "rolelist");
			    					selectObj.setDisabled();//下拉框加锁
			    					$("#orgQry").val(jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]");
			    					$("#orgQry").setDisabled();
								    selectObj.append(orglistElement);
			    					break;
			    				}
			    			} else if(manuMainTainType == 'UPD' && appId =='UACP') {
				    			if(orgId == jsonArray[i].ORG_ID) {
					    			orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'" selected="selected">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
			    					$("#selectOrgValue").val(jsonArray[i].ORG_ID);
									getRole("applist", "selectOrgValue", "rolelist");
									selectObj.setDisabled();//下拉框加锁
			    					$("#orgQry").val(jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]");
			    					$("#orgQry").setDisabled();
							    	selectObj.append(orglistElement);
			    					break;
				    			}
				    		}else {
			    				orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
			    			}
			    		}
		    		} else if(count !=0 && appModel == '2' && manuMainTainType != 'UPD') {
		    			orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'" selected="selected">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
    					$("#selectOrgValue").val(jsonArray[i].ORG_ID);
						getRole("applist", "selectOrgValue", "rolelist");
						selectObj.setDisabled();//下拉框加锁
    					$("#orgQry").val(jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]");
    					$("#orgQry").setDisabled();
				    	selectObj.append(orglistElement);
    					break;
		    		} else if(manuMainTainType == 'UPD' && appId =='UACP') {
		    			if(orgId == jsonArray[i].ORG_ID) {
			    			orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'" selected="selected">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
	    					$("#selectOrgValue").val(jsonArray[i].ORG_ID);
							getRole("applist", "selectOrgValue", "rolelist");
							selectObj.setDisabled();//下拉框加锁
	    					$("#orgQry").val(jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]");
	    					$("#orgQry").setDisabled();
					    	selectObj.append(orglistElement);
	    					break;
		    			}
		    		} else {*/
		    			orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
		    		//}
			    	/** 与数组中存储的appId orgId比对 */
				    selectObj.append(orglistElement);
		    	}	    	
		    }
		});
	}
	
	//加载机构下拉选项
	function getOrg2(appListName,orgListName) {
		var urlPath = "/topcheerframework/commonAjax";
		var loginAccount = $("#loginAccount").val();
		var appId = $("#"+appListName+"").val();
		var appModel = getAppModelByAppId(appId);
		var manuMainTainType = $("#manuMainTainType").val();
		var orgQry = $("#orgQry").val();
		if(null == $.trim(orgQry) || $.trim(orgQry) == "---请选择---" || $.trim(orgQry) == "") {
			orgQry = "";
		}
		if('UPD' != manuMainTainType){
			if('2' == appModel || 'XT104' == appId || 'XT118' == appId || 'XT226' == appId || "XT222" == appId || 'XT134' == appId || 'XT208' == appId || 'XT209' == appId) {
	    		$("#localAccount").val(loginAccount);
				document.getElementById('localAccount').readOnly = true;
				document.getElementById('localAccount').style.backgroundColor="#EBEBE4";
			} else {
				$("#localAccount").val('');
				document.getElementById('localAccount').readOnly = false;
				document.getElementById('localAccount').style.backgroundColor="#FFFFFF";
			}
		}
		var applyType = $("#applyType").val();
		var selectedLoginAccount = $("#loginAccount").val();
		
		/** 清空角色列表 */
		var roleListName = "rolelist";
		var selectRoleObj = $("select[name='"+roleListName+"']");
		selectRoleObj.empty();
		/** 清空角色列表 */
		
	    $.ajax({  
		    async : false,  
		    cache: false,  
		    type: 'POST',  
		    dataType : "json",  
		    url: urlPath,//请求的action路径 
		    data:{actionNum : 'queryOrgInfo'},
		    error: function () {//请求失败处理函数  
		        //alert('请求失败'); 
		    },  
		    success:function(data){ //请求成功后处理函数。
		        var jsonArray = eval('('+data+')');
		    	var orglistElement;
				var selectObj = $("select[name='"+orgListName+"']");
				selectObj.removeDisabled();//下拉框解锁
				selectObj.empty();
				selectObj.append( '<option value="0">'+"---请选择---"+'</option>');
		    	for(var i=0;i<jsonArray.length;i++){
		    		/** 与数组中存储的appId orgId比对 */
		    		if((jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]").indexOf(orgQry) != -1) {
			    		if(userBeanArray.length != 0) {
				    		for(var j=0;j<userBeanArray.length;j++) {
				    			if(userBeanArray[j].appId == appId) {
				    				var arrOrgId = userBeanArray[j].orgId;
				    				if(arrOrgId == jsonArray[i].ORG_ID) {
				    					orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'" selected="selected">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
				    					$("#selectOrgValue").val(arrOrgId);
										getRole("applist", "selectOrgValue", "rolelist");
				    					selectObj.setDisabled();//下拉框加锁
				    					break;
				    				}
				    			} else {
				    				orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
				    			}
				    		}
			    		} else {
			    			orglistElement= '<option title="'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'" value="'+jsonArray[i].ORG_ID+'">'+jsonArray[i].ORG_NAME+"["+jsonArray[i].ORG_CODE+"]"+'</option>';
			    		}
			    		/** 与数组中存储的appId orgId比对 */
				    	selectObj.append(orglistElement);
			    	}
		    	}	    	
		    }
		});
	}
	
	//加载角色信息
	function getRole(appListName,orgListName,roleListName) {
		$("#orgQry").val($("#orglist option:selected").text());
		var appId = $("#"+appListName+"").val();
		var orgId = $("#"+orgListName+"").val();
		if(null == orgId || '0' == orgId) {
			return false;
		}
		$("#roleQry").val("---请选择---");
		var urlPath = "/topcheerframework/commonAjax";
		var applyType = $("#applyType").val();
		//var selectedLoginAccount = $("#loginAccount").val();
		
	    $.ajax({  
		    async : false,  
		    cache: false,  
		    type: 'POST',  
		    dataType :"json",  
		    url: urlPath,//请求的action路径 
		    data:{actionNum : 'queryRoleInfo'},  
		    error: function () {//请求失败处理函数  
		        //alert('请求失败'); 
		    },  
		    success:function(result){ //请求成功后处理函数。
		    	//var data = '[{"ROLE_ID":"roleId1","ROLE_NAME":"角色1"},{"ROLE_ID":"roleId2","ROLE_NAME":"角色2"},{"ROLE_ID":"roleId3","ROLE_NAME":"角色3"}]';
		    	var data =result.list;
		    	var jsonArray = data;
		    	var rolelistElement;
				var selectObj = $("select[name='"+roleListName+"']");
				selectObj.empty();
				selectObj.append( '<option value="0">'+"---请选择---"+'</option>');
				if(null != jsonArray && jsonArray.length > 0) {
			    	for(var i=0;i<jsonArray.length;i++){
			    		rolelistElement= '<option value="'+jsonArray[i].ROLE_ID+'">'+jsonArray[i].ROLE_NAME+'</option>';
				    	selectObj.append(rolelistElement);
			    	}
			    }
		    }
		});
	}
	
	//加载角色信息
	function getRole2(appListName,orgListName,roleListName) {
		var appId = $("#"+appListName+"").val();
		var orgId = $("#"+orgListName+"").val();
		var roleQry = $("#roleQry").val();
		if(null == $.trim(roleQry) || $.trim(roleQry) == "---请选择---" || $.trim(roleQry) == "") {
			roleQry = "";
		}
		if(null == orgId || '0' == orgId) {
			return false;
		}
		var urlPath = "${request.contextPath}"  + "/staffStatusImproveAction.action";
		var applyType = $("#applyType").val();
		//var selectedLoginAccount = $("#loginAccount").val();
		
	    $.ajax({  
		    async : false,  
		    cache: false,  
		    type: 'POST',  
		    dataType : "json",  
		    url: urlPath,//请求的action路径 
		    data:{actionKbn:"queryRoleInfoByAppIdAndOrgID","userrole.appId":appId,"userrole.id.orgId":orgId,"applyType":applyType},  
		    error: function () {//请求失败处理函数  
		        alert('请求失败'); 
		    },  
		    success:function(data){ //请求成功后处理函数。
		        var jsonArray = eval('('+data+')');
		    	var rolelistElement;
				var selectObj = $("select[name='"+roleListName+"']");
				selectObj.empty();
				selectObj.append( '<option value="0">'+"---请选择---"+'</option>');
				if(null != jsonArray && jsonArray.length > 0) {
				    for(var i=0;i<jsonArray.length;i++) {
				    	if(jsonArray[i].ROLE_NAME.indexOf(roleQry) != -1) {
				    		rolelistElement= '<option value="'+jsonArray[i].ROLE_ID+'">'+jsonArray[i].ROLE_NAME+'</option>';
					    	selectObj.append(rolelistElement);
				    	}
				    }
				}
		    }
		});
	}
	
	function getRoleName() {
		$("#roleQry").val($("#rolelist option:selected").text());
	}
	
	//添加或更新汇总列表
    function addUserToList(){
		alert(888);
		removeUserInfoObjectDisable();//解除禁用
		var isHandPhoneNotUsed = true;//判断手机号没被使用
		
		if($("#userType").val() != '1'){
			var userIdtypeValue = $("#userIdTypeValue").val();
			$("input[name='userinfo.userIdType']").val(userIdtypeValue);
			
			var userIdNoValue = $("#userIdNoValue").val();
			$("input[name='userinfo.userIdNo']").val(userIdNoValue);
		}else{
			document.getElementById("userIdTypeValue").disabled = false;
 			document.getElementById("userIdNoValue").disabled = false;
		}
		var loginAccount = $("#loginAccount").val();
		var manuMainTainType = $("#manuMainTainType").val();
		var isReserveSelectManu = $("#isReserveSelectManu").val();
		var newworkStatus = $("#newworkStatus").val();
		var orderdateManu =$("#orderdateManu").val();
		var newAppId = $("#newAppId").val();
		var newLocalAccount = $("#newLocalAccount").val();
		var newOrgId = $("#newOrgId").val();
		var newRoleId = $("#newRoleId").val();
		if(null == manuMainTainType || '0' == manuMainTainType){
		 	setUserInfoObjectDisable();
		 	alert('请先选择维护类型!');
			return false; 	
		}
		if(null == loginAccount|| "" == loginAccount){
		 	setUserInfoObjectDisable();
			document.getElementById("loginAccount").disabled = false;
			alert('请先选择一个员工账号添加至列表!');
			$("#loginAccount").focus();
			return false; 
		}else{
			if(null == $("#userName").val()|| "" == $("#userName").val()){
		 		setUserInfoObjectDisable();
 				document.getElementById("userName").disabled = false;
				alert('员工姓名必输!');
				$("#userName").focus();
				return false; 
			}
			var a = /^[A-Za-z0-9]+$/;                                   //校验数字和字母
			var m = /^[0-9]{11}$/;             							//校验手机号码
			var p = /^\d{3,4}-\d{7,8}(-\d{3,4})?$/;                     //校验电话号码
			var e = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;   //校验邮箱

			/** 20141022 update by lincoln_cheng --start */
			/**
			 * 新工作状态为【离岗】或【预约离岗】时不对证件做校验
			 */
			if(!("02" == newworkStatus || "03" == newworkStatus)) {
				if(!checkUniqueUserIdTypeAndIdNo()){
					return false;
				}
			}
			/** 20141022 update by lincoln_cheng --end-- */
			/*if(!a.test($("#userIdNo").val())) {
		 		setUserInfoObjectDisable();
 				document.getElementById("userIdNo").disabled = false;
				alert("证件号码请输入1-30位数字或字母！");
				$("#userIdNo").focus();
				return false;
			}*/
			if($("#userType").val() == '0') {
		 		setUserInfoObjectDisable();
 				document.getElementById("userType").disabled = false;
				alert("请先选择用户类型！");
				$("#userType").focus();
				return false;
			}
			if($("#email").val() != '') {
				if(!e.test($("#email").val())) {
		 			setUserInfoObjectDisable();
					alert("邮箱格式错误，请重新输入！");
					$("#email").focus();
					return false;
				}
			}
			if($("#handphone").val() == '') {
		 		setUserInfoObjectDisable();
				alert("手机号不能为空！");
				$("#handphone").focus();
				return false;
			}
			if(!m.test($("#handphone").val())) {
		 		setUserInfoObjectDisable();
				alert("手机号码必须为11位数字！");
				$("#handphone").focus();
				return false;
			}if('UPD'==manuMainTainType&&''!=newworkStatus){
				if('03'!=newworkStatus&&'1' == isReserveSelectManu){
		 			setUserInfoObjectDisable();
					alert("预约处理暂时只开放预约离岗，其他暂不处理!");
				}else{
					if('03'==newworkStatus&&'1' == isReserveSelectManu){
						if(null == orderdateManu||''==orderdateManu){
		 					setUserInfoObjectDisable();
							alert("预约处理时间不能为空!");
						}else{
							/*if(($("#userType").val() == '3' || $("#userType").val() == '4') && $("#userCode").val() != '') {
								judgeSameUserCode($("#userCode").val(), $("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
							} else {
								judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
							}*/
							/** 20141022 update by lincoln_cheng --start */
							/**
							 * 新工作状态为【离岗】或【预约离岗】时不对手机号做校验
							 */
							//if(!("02" == newworkStatus || "03" == newworkStatus)) {
							//	isHandPhoneNotUsed = judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
							//}
							/** 20141022 update by lincoln_cheng --end-- */
						}
					}else{
						if("07" == newworkStatus||"08" == newworkStatus || "10" ==newworkStatus){
							if(null == newAppId||'' == newAppId){
		 						setUserInfoObjectDisable();
								alert("请选择新应用系统!");
								return false;
							}
							var isHasSpace = checkTextSpace(newLocalAccount);
							if(isHasSpace){
								setUserInfoObjectDisable();
								alert("您输入的新应用系统账号中含有空格，请检查!");
								$("#newLocalAccount").focus();
								return false;
							}
							if(null == newLocalAccount||'' == newLocalAccount){
								setUserInfoObjectDisable();
								alert("新应用系统账号不能为空!");
								$("#newLocalAccount").focus();
								return false;
							}
							if(null == newOrgId||'0' == newOrgId){
								setUserInfoObjectDisable();
								alert("请选择新组织架构!");
								return false;
							}
							if(null == newRoleId||'0' == newRoleId){
								setUserInfoObjectDisable();
								alert("请选择新角色!");
								return false;
							}
						}
						/*if(($("#userType").val() == '3' || $("#userType").val() == '4') && $("#userCode").val() != '') {
							judgeSameUserCode($("#userCode").val(), $("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
						} else {
							judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
						}*/
						/** 20141022 update by lincoln_cheng --start */
						/**
						 * 新工作状态为【离岗】或【预约离岗】时不对手机号做校验
						 */
						if(!("02" == newworkStatus || "03" == newworkStatus)) {
							isHandPhoneNotUsed = judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
						}
						/** 20141022 update by lincoln_cheng --end-- */
					}
				}
			} else {
				/*if(($("#userType").val() == '3' || $("#userType").val() == '4') && $("#userCode").val() != '') {
					judgeSameUserCode($("#userCode").val(), $("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
				} else {
					judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
				}*/
				isHandPhoneNotUsed = judgeSameHandphone($("#handphone").val(), $("#loginAccount").val(), $("#recordId").val(), manuMainTainType);
		    }
			if(isHandPhoneNotUsed) {
				addUserAllInfoToList();
			}
	    }
	}

	//添加或更新至列表--表单提交
	function addUserAllInfoToList() {
		var addOrUpd = $("#addOrUpd").val();
		var manuMainTainType = $("#manuMainTainType").val();
		tempFolderId = getIframeElementValue();
		
		$("input[name='actionKbn']").val("addUserAllInfoToList");
		var submitUrl = "${request.contextPath}" + "/staffStatusImproveAction.action?operator="+addOrUpd+"&manuMainTainType="+manuMainTainType+"&tempFolderId="+tempFolderId;
        $('#form1').attr("action", submitUrl);
        $('#form1').submit();
	}