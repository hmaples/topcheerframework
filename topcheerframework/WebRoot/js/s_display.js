function display(id) {
	var results = document.getElementsByName("resulttable");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "result" + id) {
			results[i].style.display = "block";
		} else {
			results[i].style.display = "none";
		}
	}
}