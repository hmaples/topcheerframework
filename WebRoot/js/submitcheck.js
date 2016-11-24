function checkchoice() {
//单选判断是否选择
	var val1 = $('input:radio[name="age"]:checked').val();
	var val2 = $('input:radio[name="sex"]:checked').val();
	var val3 = $('input:radio[name="education"]:checked').val();
	var val4 = $('input:radio[name="year"]:checked').val();
	var val5 = $('input:radio[name="depart"]:checked').val();
	var val6 = $('input:radio[name="radioFour"]:checked').val();
	var val7 = $('input:radio[name="radioFive"]:checked').val();
	var val8 = $('input:radio[name="radioSix"]:checked').val();
	var val9 = $('input:radio[name="radioSeven"]:checked').val();
	for (i = 1; i < 10; i++) {
		var valx = 'val' + i;

		if (eval(valx) == null) {
			alert("有题目未填写!");
			return false;
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
	for (i = 0; i < 3; i++) {
		var t = eval('mul' + (i + 1));
		if (t > 3) {
			alert("多选题最多只能选3个!");
			return false;
		}
		if (t == 0) {
			alert("多选题未选!");
			return false;
		}
	}
	// 判断多选题中其他一栏勾选后是否输入说明以及字数是否超标
	var checkelse1 = $("#3_1_0");
	if (checkelse1[0].checked) {
		if ($.trim(document.getElementById('else_1').value) == '') {
			alert("请输入注明");
			$("#else_1").focus()
			return false;
		}
		if (document.getElementById('else_1').value.length > 1000) {
			alert("您输入的字数超过限制啦,感谢您的配合^_^");
			$("#else_1").focus()
			return false;
		}
	}

	var checkelse2 = $("#3_2_0");
	if (checkelse2[0].checked) {
		if ($.trim(document.getElementById('else_2').value) == '') {
			alert("请输入注明");
			$("#else_2").focus()
			return false;
		}
		if (document.getElementById('else_2').value.length > 1000) {
			alert("您输入的字数超过限制啦,感谢您的配合^_^");
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

						alert("请输入");
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

}
