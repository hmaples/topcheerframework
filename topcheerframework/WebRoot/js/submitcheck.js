function checkchoice() {

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







}
// for (i = 1; i < 4; i++) {
// for (j = 34; j < 50; j++) {
//
// var t = $("input[id=]:checked").length;
//
// }
// if (t > 3) {
// alert("多选题最多只能选3个!");
// return false;
// }
// if (t == 0) {
// alert("多选题未选!");
// return false;
// }
// }
//
// }
