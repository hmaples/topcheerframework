function checkchoice() {	
//个人信息选中判断	
	for (i = 0; i < 5; i++) {
		for (j = 0; j < 28; j++){
			var info = "1_"+(i + 1)+"_"+(j + 6);
			var infoobj = $("#" + info);
			var infoname = $("input[id='" + info + "']").attr("name");
			var infocheck = $("input:radio[name='" + infoname + "']:checked");
			if (infocheck.length == 0) {
				if(infoname != null){
				alert("有选项未填!题目编号为个人信息:" + (i + 1));
				$("#"+info).focus();
				return false;
			}
			}			
		}		
	}
	
	//单选题选中判断
	for (i = 0; i < 4; i++) {
		for (j = 0; j < 16; j++){
			var info2 = "2_"+(i + 4)+"_"+(j + 50);
			var infoobj2 = $("#" + info2);
			var infoname2 = $("input[id='" + info2 + "']").attr("name");
			var infocheck2 = $("input:radio[name='" + infoname2 + "']:checked");
			if (infocheck2.length == 0) {
				if(infoname2 != null){
				alert("有选项未填!题目编号为单选题:" + (i + 4));
				$("#"+info2).focus();
				return false;
			}
			}			
		}		
	}
	

//偏向选择判断是否选择	
		for (i = 0; i < 30; i++) {
		var name = "m_radio_" + (i + 1)
		var radios = $("input:radio[name='" + name + "']:checked");
			if (radios.length==0) {
				alert("请填写偏向选择!题目编号:" + (i + 1));
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
		if (t1 > 3) {
			alert("多选题最多只能选3个!题目编号:1");
			$("#3_1_34").focus();
			return false;
		}
		if (t1 == 0) {
			alert("多选题未选!题目编号:1");
			$("#3_1_34").focus();
			return false;
		}
		if (t2 > 3) {
			alert("多选题最多只能选3个!题目编号:2");
			$("#3_2_34").focus();
			return false;
		}
		if (t2 == 0) {
			alert("多选题未选!题目编号:2");
			$("#3_2_34").focus();
			return false;
		}
		if (t3 > 3) {
			alert("多选题最多只能选3个!题目编号:3");
			$("#3_3_45").focus();
			return false;
		}
		if (t3 == 0) {
			alert("多选题未选!题目编号:3");
			$("#3_3_45").focus();
			return false;
		}

	// 判断多选题中其他一栏勾选后是否输入说明以及字数是否超标
	var checkelse1 = $("#3_1_0");
	if (checkelse1[0].checked) {
		if ($.trim(document.getElementById('else_1').value) == '') {
			alert("请输入注明,多选题号:1");
			$("#else_1").focus()
			return false;
		}
		if (document.getElementById('else_1').value.length > 1000) {
			alert("您输入的字数超过限制,感谢您的配合");
			$("#else_1").focus()
			return false;
		}
	}

	var checkelse2 = $("#3_2_0");
	if (checkelse2[0].checked) {
		if ($.trim(document.getElementById('else_2').value) == '') {
			alert("请输入注明,多选题号:2");
			$("#else_2").focus()
			return false;
		}
		if (document.getElementById('else_2').value.length > 1000) {
			alert("您输入的字数超过限制,感谢您的配合");
			$("#else_2").focus()
			return false;
		}
	}

	// 判断偏向选择5,6,7分是否写注明
	for (i = 1; i < 31; i++) {
		for (j = 1; j < 8; j++) {
			var score = "4_" + i + "_" + j;
			var scoreobj = $("#" + score);
			// var checkobj=$("input[id='"+score+"']:checked");

			if (scoreobj[0].checked) {
				// var
				// checkscore=document.getElementById(score).nextSibling.nodeValue;
				if (j >= 5) {
					if ($.trim(document.getElementById('subb_' + i).value) == '') {

						alert("偏向选择分数高于5分请注明原因,题号:"+(i + 1));
						$("#subb_"+i).focus();
						return false;
					}

				}
				if (document.getElementById('subb_' + i).value.length > 1000) {
					alert("您输入的字数超过限制啦,感谢您的配合^_^");
					$("#subb_"+i).focus();
					return false;
				}
			}
		}
	}

	// 判断最后一题是否字数超标
	if (document.getElementById('5_1_null').value.length > 1000) {
		alert("您输入的字数超过限制啦,感谢您的配合^_^");
		$("5_1_null").focus();
		return false;
	}
	return true;
}
