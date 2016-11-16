function show(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "result" + id) {
			results[i].style.display = "block";
		} else {
			results[i].style.display = "none";
		}
	}
}
function showDetail(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "resultDetail" + id) {
			results[i].style.display = "block";
		}
	}
}
function noShow(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "result" + id) {
			results[i].style.display = "none";
		} else {
			results[0].style.display = "block";
		}
	}
}
function notShow(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "resultDetail" + id) {
			results[i].style.display = "none";
		} else {
			results[0].style.display = "block";
		}
	}
}
function disShow(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "result" + id) {
			results[i].style.display = "none";
		}
	}
}
function staffSelect() {
	$.ajax({
		url : "commonAjax",
		data : {
			actionNum : 'w_selectStaff',
			number : document.getElementById("number1").value,
		},
		success : function(result) {
			$('#staffName').val(result.staffName);
		}
	});
}
