<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="assets/css/login.css" rel="stylesheet" />
<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/login.js" type="text/javascript"></script>
<title>Sem Barreiras | Cadastre-se</title>
</head>
<body>
	<div class="cadastro-page">
		<div class="form" action="ManterPais.do" method="post">
			<form class="cadastro-form">
				<input type="text" placeholder="Nome" /> 
				<input type="text" placeholder="Sobrenome" /> 
				<input type="text" placeholder="Login (e-mail)" /> 
				<input type="password"	placeholder="Senha" />
				<button>Cadastrar</button>
				<p class="message">
					Possui um login?<a href="login.html"> Entre aqui.</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>