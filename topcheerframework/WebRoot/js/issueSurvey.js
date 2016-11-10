function dataHandling(){

	var radioValue = null;
	var checkValue = null;
	var textValue = null;
	var question_answer;
	for (var i = 0; i < $('#surveyForm').find("input[type='radio']").length; i++) {
		if ($('#surveyForm').find("input[type='radio']")[i].checked) {
			var radioValueTemp = $('#surveyForm').find("input[type='radio']")[i].id;
			if (radioValue == null) {
				radioValue = radioValueTemp;
			} else {
				radioValue = radioValue + "," + radioValueTemp;
			}
		}
	}
	for (var j = 0; j < $('#surveyForm').find("input[type='checkbox']").length; j++) {
		if ($('#surveyForm').find("input[type='checkbox']")[j].checked) {
			var checkValueTemp = $('#surveyForm').find("input[type='checkbox']")[j].id;
			if (checkValue == null) {
				checkValue = checkValueTemp;
			} else {
				checkValue = checkValue + "," + checkValueTemp;
			}
		}
	}
	for (var k = 0; k < $('#surveyForm').find("textarea").length; k++) {
		var textValueTemp =$('#surveyForm').find("textarea")[k].id+"_"+$('#surveyForm').find("textarea")[k].value;
		if (textValue == null) {
			textValue = textValueTemp;
		} else {
			textValue = textValue + "^" + textValueTemp;
		}
	}
	question_answer=radioValue+checkValue+textValue;
	alert(question_answer);
	$('#radioValue').attr("value",radioValue);
	$('#checkValue').attr("value",checkValue);
	$('#textValue').attr("value",textValue);
	$('#surveyForm').submit();
}
