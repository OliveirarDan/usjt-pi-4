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
		<div class="form" action="ManterUsuario.do" method="post">
			<form class="cadastro-form">
				<input type="text" placeholder="Nome" name="nome" id="nome" required maxlength="25"/> 
				<input type="text" placeholder="Sobrenome" name="sobrenome" id="sobrenome" required	maxlength="25"/> 
				<input type="email" placeholder="Login (e-mail)" name="email" id="email" required maxlength="60" /> 
				<input type="password"placeholder="Senha" name="senha" id="senha" required maxlength="20"/>
				<button type="submit" nome="acao">Cadastrar</button>
				<p class="message">
					Possui um login?<a href="login.html"> Entre aqui.</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>