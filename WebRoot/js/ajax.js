function queryUser() {
	$('#maple').val("点击了");
	$.ajax( {
		url : "commonAjax.do",
		data : {
			actionNum : 'ajaxQuery',
			userName : 'hmaple',
			passWord : 'hmaple'
		},
		success : function(result) {
			alert(result.status);
		}
	});
}