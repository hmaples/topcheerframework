function show(id) {
	var results = document.getElementsByName("resultDiv");
	for (var i = 0; i < results.length; i++) {
		if (results[i].id == "result" + id) {
			results[i].style.display = "";
		} else {
			results[i].style.display = "none";

		}
	}
}