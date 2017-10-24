function previewFile() {
	var preview = document.querySelector('img');
	var file = document.querySelector('input[type=file]').files[0];
	var reader = new FileReader();

	reader.addEventListener("load", function() {
		preview.src = reader.result;
	}, false);

	if (file) {
		reader.readAsDataURL(file);
	}

}

function readFile() {

	if (this.files && this.files[0]) {

		var FR = new FileReader();

		FR.addEventListener("load", function(e) {
			document.getElementById("img").src = e.target.result;
			document.getElementById("b64").innerHTML = e.target.result;
		});

		FR.readAsDataURL(this.files[0]);
	}
}
document.getElementById("foto").addEventListener("change", readFile);
