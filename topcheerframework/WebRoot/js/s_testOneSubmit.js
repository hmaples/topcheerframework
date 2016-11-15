function testone()
{
	//首先判断单选框是否选中
	for(var i=0;i<document.getElementsByName('score1').length;i++){
		if(document.getElementsByName('score1')[i].checked=true){
			//再判断textarea是否为空
			if(document.getElementById('textarea1').value==''){
				alert("请输入依据");
				return false;
			}else{
				alert("提交成功");
				return false;
			}
				
			}
		}
}
