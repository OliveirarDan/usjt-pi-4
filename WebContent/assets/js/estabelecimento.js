$(document).ready(function(){
	
	var form = $("#formCadastroEst");
	
	form.on("submit", function(e){
		
		e.preventDefault();
		
		var data  = form.serializeArray();
		
		$.ajax({
			url: "ManterEstabelecimento.do",
			data: data,
			method: "post",
			success: function(data){
				console.log(data);
			}
		})
		
		console.log(data);
		
		
		
	})
	
});