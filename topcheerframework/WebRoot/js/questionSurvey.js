function judge() {
	var arr = new Array();
	var radioValue = null;
	var checkValue = null;
	var textValue = null;
	var question_answer;
	for (i = 0; i < $('#MyForm').find("input[type='radio']").length; i++) {
		if ($('#MyForm').find("input[type='radio']")[i].checked) {
			var radioValueTemp = $('#MyForm').find("input[type='radio']")[i].value;
			if (radioValue == null) {
				radioValue = radioValueTemp;
			} else {
				radioValue = radioValue + "," + radioValueTemp;
			}
		}
	}
	// alert(radioValue);
	for (j = 0; j < $('#MyForm').find("input[type='checkbox']").length; j++) {
		if ($('#MyForm').find("input[type='checkbox']")[j].checked) {
			var checkValueTemp = $('#MyForm').find("input[type='checkbox']")[j].value;
			if (checkValue == null) {
				checkValue = checkValueTemp;
			} else {
				checkValue = checkValue + "," + checkValueTemp;
			}

		}
	}
	for (k = 0; k < $('#MyForm').find("textarea").length; k++) {
		var textValueTemp = $('#MyForm').find("textarea")[k].value;
		if (textValue == null) {
			textValue = textValueTemp;
		} else {
			textValue = textValue + "," + textValueTemp;
		}
	}
	question_answer=radioValue+checkValue+textValue;
	//alert(question_answer);
	$('#radioValue').attr("value",radioValue);
	$('#checkValue').attr("value",checkValue);
	$('#textValue').attr("value",textValue);
	$('#MyForm').submit();
}

// var i;
// var arr=new Array();
// for(i=0;i<document.all.length;i++){
// if(document.all(i).type='radio_*'&&document.all(i).checked==true){
// //alert(document.all(i).value);
// arr.push(document.all(i).value);
// }
// alert(arr);
// var textarea = document.getElementById('textarea').value;
// alert(textarea);

