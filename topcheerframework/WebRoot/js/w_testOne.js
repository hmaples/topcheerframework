function test1() {
	for (var i = 0; i < document.getElementsByName('score01').length; i++) {
		if (document.getElementsByName('score01')[i].checked) {
			if(document.getElementById('testarea01').value==''){
				alert("提交失败");
			}else{
				alert("提交成功02");
			}
		}
	}
}