// 校验用户信息是否丢失和重复提交
function userIdJudge(){
	var userId = document.getElementById('userId').value;
	if(userId ==null||userId ==""||userId =="null"){
		alert("信息丢失，请重新进入，谢谢！");
		return false;
	}
	//判断用户是否是第二次提交
	$.ajax({
		url : "commonAjax.do",
		async: true,
		data : {
			actionNum : 'userJudge',
			userID : userId,
			questionnaireID : $('#questionnaireId').val()
		},
		success : function(result) {
			if(result.message!=null&&''!=result.message){
				alert("您已经参与过本次问卷调查，感谢您的参与，谢谢！");
				return false;
			}
			$('#myForm').submit();
		},
		failure : function(error){
			alert("系统错误，请联系管理员！");
			return false;
		}
	});
}

function dataHandling() {
	if(!checkchoice()){
		return false;
	}
	dataSubmit();
};	


function dataSubmit(){
	var radioValue = null;
	var checkValue = null;
	var subValue = null;
	var suggestValue = null;
	var restOne=null;
	var restTwo=null;
	
	// 多选题其他取值
	if (document.getElementById('3_1_0').checked) {
		restOne = 3 + "_" + 1 + "_" + 0 + "_"+ document.getElementById('else_1').value;

	}
	if (document.getElementById('3_2_0').checked) {
		restTwo = 3 + "_" + 2 + "_" + 0 + "_"+ document.getElementById('else_2').value;
	}

	// 单选题答案
	for (var i = 0; i < $('#questionnaire').find("input[type='radio']").length; i++) {
		if ($('#questionnaire').find("input[type='radio']")[i].checked) {
			var radioValueTemp = $('#questionnaire')
					.find("input[type='radio']")[i].id;
			if (radioValue == null) {
				radioValue = radioValueTemp;
			} else {
				radioValue = radioValue + "," + radioValueTemp;
			}
		}
	}
	// 多选题答案
	for (var j = 0; j < $('#questionnaire').find("input[type='checkbox']").length; j++) {
		if ($('#questionnaire').find("input[type='checkbox']")[j].checked) {
				var checkValueTemp = $('#questionnaire').find(
						"input[type='checkbox']")[j].id;
				if (checkValue == null) {
					checkValue = checkValueTemp;
				} else {
					checkValue = checkValue + "," + checkValueTemp;
				}
			}
	}
	// 偏向选择字符串拼接
	for (var k = 0; k < $('#questionnaire').find("input[id*='subb']").length; k++) {
		// alert($('#questionnaire').find("input[id*='subb']")[k].id);
		if ($('#questionnaire').find("input[id*='subb']")[k].value != null
				|| $('#questionnaire').find("input[id*='subb']")[k].value != '') {
			var subValueTemp = $('#questionnaire').find("input[id*='subb']")[k].id
					+ '_'
					+ $('#questionnaire').find("input[id*='subb']")[k].value;
			if (subValue == null) {
				subValue = subValueTemp;
			} else {
				subValue = subValue + "#" + subValueTemp;
			}
		}
	}
	// 建议与意见题
	suggestValue = "5_1_''" + "_" + document.getElementById('5_1_null').value;
	// 绑定到jsp
	$('#restOne').attr("value", restOne);
	$('#restTwo').attr("value", restTwo);
	$('#radioValue').attr("value", radioValue);
	$('#checkValue').attr("value", checkValue);
	$('#subValue').attr("value", subValue);
	$('#suggestValue').attr("value", suggestValue);
	$('#questionnaire').submit();
}
	

