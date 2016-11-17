function submitone() {
	for (i = 0; i < 7; i++) {

		var temp = 'score' + (i + 1);
		var t = "document.form1." + temp + ".length";
		var text = 'textarea' + (i + 1);

		for (j = 0; j < eval(t); j++) {

			var tx = "document.form1." + temp + "[" + j + "].checked";

			if (eval(tx)) {
				if (document.getElementById(text).value == '') {
					alert("请输入依据");
					return false;
				}
			}
		}
	}
	alert("提交成功");
	window.location.href = 'jsps/s_tobecontinued.jsp';
	return false;
}

