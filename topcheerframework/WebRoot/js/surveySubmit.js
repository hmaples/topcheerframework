function dataHandling() {

	var radioValue = null;
	var checkValue = null;
	var subValue = null;
	var suggestValue = null;

	// 多选题其他取值
	if (document.getElementById('3_1_0').checked) {
		var restOne = 3 + "_" + 1 + "_" + 0 + "_"
				+ document.getElementById('else_1').value;

	}
	if (document.getElementById('3_2_0').checked) {
		var restTwo = 3 + "_" + 2 + "_" + 0 + "_"
				+ document.getElementById('else_2').value;
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
			if ($('#questionnaire').find("input[type='checkbox']")[j].id == '3_1_0'
					| $('#questionnaire').find("input[type='checkbox']")[j].id == '3_2_0') {
			} else {
				var checkValueTemp = $('#questionnaire').find(
						"input[type='checkbox']")[j].id;
				if (checkValue == null) {
					checkValue = checkValueTemp;
				} else {
					checkValue = checkValue + "," + checkValueTemp;
				}
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
	suggestValue = "5_1_" + "_" + document.getElementById('5_1_null').value;
	// 绑定到jsp
	$('#restOne').attr("value", restOne);
	$('#restTwo').attr("value", restTwo);
	$('#radioValue').attr("value", radioValue);
	$('#checkValue').attr("value", checkValue);
	$('#subValue').attr("value", subValue);
	$('#suggestValue').attr("value", suggestValue);
	$('#questionnaire').submit();
};
