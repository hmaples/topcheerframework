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
		$("#localAccount").val('admin');
		$("#appQry").val("买单吧系统");
		$("#orgQry").val("运营管理部");
		$("#roleQry").val("买单吧管理员");
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
		    success:function(data){ //请求成功后处理函数。
		    	data="{ root: [ {appName:'1',appId:'0'}, {appName:'6101',appId:'2'}, {appName:'6102',appId:'3'} ] }"; 
		    	var jsonArray = eval('('+data+')');
		    	
		    	//加载应用列表集合
		    	var appList = jsonArray;
		    	var selectObj = $("select[name='"+appListName+"']");
		    	selectObj.empty();
		    	selectObj.append( '<option value="'+"0"+'">'+"---请选择---"+'</option>');
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
			$("#authority-list1").class
		   $("#authority-list1").show();
		});
	});

	function checkLocalAccount(){
		var muMtType = $("#manuMainTainType").val();
		$("#vaLocalAccount").hide();
		var isChcek = false;
		if("UPD" == muMtType){
			var urlPath = "${request.contextPath}"  + "/staffStatusImproveAction.action";
			$.ajax({  
			    async : false,  
			    cache: false,  
			    type: 'POST',  
			    dataType : "json",  
			    url: urlPath,//请求的action路径    
			    data:{actionKbn:"checkLocalAccountExists","userrole.id.userId":$("#userId").val(),
			    "userrole.appId":$("#applist").val(),"userrole.id.localAccount":$("#localAccount").val()}, 
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