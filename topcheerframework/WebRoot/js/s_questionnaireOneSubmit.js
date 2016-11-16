//function submitone() {
//	// 首先循环问题,再循环该问题的radio单选框,判断是否选中,选中的判断textarea是否为空,为空alert提示,未选中的单选框继续下一题
//
//	for ( var k = 1; k <= 8; k++) {
//		// 判断单选框是否选中
//		for ( var i = 0; i < document.getElementsByName('score' + k).length; i++) {
//
//			if (document.getElementsByName('score' + k)[i].checked == true) {
//				// 再判断textarea是否为空
//				if (document.getElementById('textarea' + k).value == '') {
//					alert("填依据");
//					return false;
//				} else {
//					alert("提交成功");
//					window.location.href = 'jsps/s_tobecontinued.jsp';
//					return false;
//				}
//
//			} else {
//				alert("提交成功");
//				window.location.href = 'jsps/s_tobecontinued.jsp';
//				return false;
//			}
//
//		}
//	}
//}

function submitone()
{
	//首先判断单选框是否选中
	for(var i=0;i<document.getElementsByName('score1').length;i++){
		if(document.getElementsByName('score1')[i].checked==false){
			alert("提交成功");
			window.location.href='jsps/s_tobecontinued.jsp';
			return false;
		}
		if(document.getElementsByName('score1')[i].checked==true){
			//再判断textarea是否为空
			if(document.getElementById('textarea1').value==''){
				alert("请输入依据");
				return false;
			}else{
				alert("提交成功");
				window.location.href='jsps/s_tobecontinued.jsp';
				return false;
			}
				
			}
		}
}