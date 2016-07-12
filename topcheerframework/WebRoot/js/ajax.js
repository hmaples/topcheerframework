function queryUser() {
	$('#maple').val("点击了");
	$.ajax( {
		url : "commonAjax",
		data : {
			actionNum : 'ajaxQuery'
		},
		success : function(result) {
			alert(result.status);
		}
	});
}