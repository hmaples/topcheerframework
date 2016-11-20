function openHint() {
	alert("本问卷是匿名问卷,所以评分依据里面请不要提及部门、项目组、人名等可能泄密信息!");
}
//问卷一提交判断依据
function submitTestOne() {
	for ( var i = 0; i < document.getElementsByName('score01').length; i++) {
		if (document.getElementsByName('score01')[i].checked) {
			if (document.getElementById('textarea01').value == '') {
				alert("请填写依据");
			}
		}
	}
	for ( var i = 0; i < document.getElementsByName('score02').length; i++) {
		if (document.getElementsByName('score02')[i].checked) {
			if (document.getElementById('textarea02').value == '') {
				alert("请填写依据");
			}
		}
	}
	for ( var i = 0; i < document.getElementsByName('score03').length; i++) {
		if (document.getElementsByName('score03')[i].checked) {
			if (document.getElementById('textarea03').value == '') {
				alert("请填写依据");
			}
		}
	}
	for ( var i = 0; i < document.getElementsByName('score04').length; i++) {
		if (document.getElementsByName('score04')[i].checked) {
			if (document.getElementById('textarea04').value == '') {
				alert("请填写依据");
			}
		}
	}
}

//问卷一重置按钮确认
function resetTestOne(){
	alert("请确认重置所有答案!");
}


//问卷一结果显示

//问卷二详情显示

function show(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "resultDetail" + id) {
			results[i].style.display = "block";
		} else {
			results[i].style.display = "none";
		}
	}
}

//问卷二详情消失

function noShow(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "resultDetail" + id) {
			results[i].style.display = "none";
	}
	}}

