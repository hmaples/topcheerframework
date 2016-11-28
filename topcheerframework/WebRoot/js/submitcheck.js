function checkchoice() {
	
	//判断个人信息是否填写
	var names = new Array("age","sex","education","year","depart");
	for(i=0;i<5;i++){ 
		var name = names[i];
		var infocheck = $("input:radio[name='" +name+"']:checked");
		if (infocheck.length == 0){
			alert("您的个人信息未填写完整,题目编号为:" + (i+1));
			$("input:radio[name='" +name+"']")[0].focus();
			document.getElementById('resetB').disabled=false;
			return false;
			
		}
	}
	

	// 判断多选题是否选中以及个数是否超标
	var mul1 = $("input[name=checkOne]:checked").length;
	var mul2 = $("input[name=checkTwo]:checked").length;
	var mul3 = $("input[name=checkThree]:checked").length;
	var t1 = eval('mul1');
	var t2 = eval('mul2');
	var t3 = eval('mul3');
	if (t1 == 0) {
		alert("多选题1未选择，请重新修改后提交。");
		$("#3_1_34").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}

	if (t2 == 0) {
		alert("多选题2未选择，请重新修改后提交。");
		$("#3_2_34").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}

	if (t3 == 0) {
		alert("多选题3未选择，请重新修改后提交。");
		$("#3_3_45").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}
	if (t1 > 3) {
		alert("多选题1选中项超过3个,请重新修改后提交。");
		$("#3_1_34").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}
	if (t2 > 3) {
		alert("多选题2选中项超过3个,请重新修改后提交。");
		$("#3_2_34").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}
	if (t3 > 3) {
		alert("多选题3选中项超过3个,请重新修改后提交。");
		$("#3_3_45").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}
	
	// 判断多选题中其他一栏勾选后是否输入说明以及字数是否超标
	var checkelse1 = $("#3_1_0");
	if (checkelse1[0].checked) {
		if ($.trim(document.getElementById('else_1').value) == '') {
			alert("您在多选题:1中选择了其他选项，请您请输入注明");
			$("#else_1").focus();
			document.getElementById('resetB').disabled=false;
			return false;
		}
		if (document.getElementById('else_1').value.length > 1000) {
			alert("您在多选题:1中注明栏内输入的字数超过限制(最大1000字),请您修改后提交");
			$("#else_1").focus();
			document.getElementById('resetB').disabled=false;
			return false;
		}
	}

	var checkelse2 = $("#3_2_0");
	if (checkelse2[0].checked) {
		if ($.trim(document.getElementById('else_2').value) == '') {
			alert("您在多选题:2中选择了其他选项，请您请输入注明");
			$("#else_2").focus();
			document.getElementById('resetB').disabled=false;
			return false;
		}
		if (document.getElementById('else_2').value.length > 1000) {
			alert("您在多选题:2中注明栏内输入的字数超过限制(最大1000字),请您修改后提交");
			$("#else_2").focus();
			document.getElementById('resetB').disabled=false;
			return false;
		}
	}
	
	// 单选题选中判断

	var names = new Array("radioFour","radioFive","radioSix","radioSeven");
	for(i=0;i<4;i++){ 
		var name = names[i];
		var infocheck = $("input:radio[name='" +name+"']:checked");
		if (infocheck.length == 0){
			alert("您单选题号为:" + (i+4) +"未选择，请重新填写");
			$("input:radio[name='" +name+"']")[0].focus();
			document.getElementById('resetB').disabled=false;
			return false;
			
		}
	}
	
//	 偏向选择判断是否选择
	for (i = 0; i < 30; i++) {
		var name = "m_radio_" + (i + 1)
		var radios = $("input:radio[name='" + name + "']:checked");
		var infoname = $("input[name='" + name + "']").attr("id");
		if (radios.length == 0) {
			alert("您偏向选择题号为:" + (i + 1) +"未选择，请您选择选项");
			$("#" + infoname).focus();
			document.getElementById('resetB').disabled=false;
			return false;
		}
	}






//偏向选择567分判断
	for (i = 0; i < 30; i++) {
		var name = "m_radio_" + (i + 1)
		var radios = $("input:radio[name='" + name + "']:checked");
		var id = radios[0].id;
		var intid = parseInt(id.substring(id.length-1,id.length));
		if(intid>4){
			if ($.trim(document.getElementById('subb_' + (i + 1)).value) == '') {
			alert("您选中的偏向选择题:" +(i + 1) + "，分数为5-7分，请填写原因后提交");
			$("#subb_" + (i + 1)).focus();
			document.getElementById('resetB').disabled=false;
			return false;
			}
		};
		if (document.getElementById('subb_' + (i  + 1)).value.length > 1000) {
			alert("您在偏向选择题号：" + (i+1) + "说明栏内输入的字数超过限制(最大1000字),请您修改后提交");
			$("#subb_"+i).focus();
			return false;
		}
	}
	


	// 判断最后一题是否字数超标
	if (document.getElementById('5_1_null').value.length > 1000) {
		alert("您对公司的建议输入的字数超过限制(最多1000字),请重新填写后提交");
		$("5_1_null").focus();
		document.getElementById('resetB').disabled=false;
		return false;
	}

	return true;
}
