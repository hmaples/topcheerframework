function dataHandling(){

	var radioValue=null;
	var checkValue=null;
	var subValue=null;
	var suggestValue=null;	
	
	
	//多选题其他取值
	if(document.getElementById('3_1_0').checked){
		var rest=3_1_document.getElementById('value_3_1_0').value;
		alert(rest);
	}
	
	//单选题答案
	for (var i = 0; i < $('#questionnaire').find("input[type='radio']").length; i++) {
		if ($('#questionnaire').find("input[type='radio']")[i].checked) {
			var radioValueTemp = $('#questionnaire').find("input[type='radio']")[i].id;
			if (radioValue == null) {
				radioValue = radioValueTemp;
			} else {
				radioValue = radioValue + "," + radioValueTemp;
			}
		}
	}
	//多选题答案
	for (var j = 0; j < $('#questionnaire').find("input[type='checkbox']").length; j++) {
		if($('#questionnaire').find("input[id='3_1_0']").checked){
			
		}
		if ($('#questionnaire').find("input[type='checkbox']")[j].checked) {
			var checkValueTemp = $('#questionnaire').find("input[type='checkbox']")[j].id;
			if (checkValue == null) {
				checkValue = checkValueTemp;
			} else {
				checkValue = checkValue + "," + checkValueTemp;
			}
		}
	}	
	//建议与意见题
	suggestValue=document.getElementById('5').value;
	
	//alert(radioValue+checkValue+suggestValue);
	//绑定到jsp
	$('#radioValue').attr("value",radioValue);
	$('#checkValue').attr("value",checkValue);
	$('#subValue').attr("value",subValue);
	$('#suggestValue').attr("value",suggestValue);
	$('#questionnaire').submit();
};
