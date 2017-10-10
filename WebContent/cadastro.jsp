<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="model.Usuario"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="assets/css/cadastro.css" rel="stylesheet" />
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/login.js" type="text/javascript"></script>
	<title>Sem Barreiras | Cadastre-se</title>
</head>
<body>
	<div class="cadastro-page">		
		<div class="form form-group col-md-12">			
			<h3>Cadastre-se</h3>
			<form class="cadastro-form" action="ManterUsuario.do" method="post">
			
			<div class="row">
				<div class="form-group col-md-6">
					<input type="text" placeholder="Nome" name="nome" id="nome" required maxlength="25" value="${usuario.nome}"/>
				</div>
			
				<div class="form-group col-md-6">
					<input type="text" placeholder="Sobrenome" name="sobrenome" id="sobrenome" required	maxlength="25" value="${usuario.sobrenome}"/> 
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<input type="email" placeholder="Login (e-mail)" name="email" id="email" required maxlength="60" value="${usuario.email}"/> 
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<input type="password"placeholder="Senha" name="senha" id="senha" required maxlength="20"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<button type="submit" nome="acao">Cadastrar</button>
				</div>
			</div>
				<p class="message">
					Possui um login?<a href="login.html"> Entre aqui.</a>
				</p>							
			</form>
			<c:if test="${mensagem != ''}">
				<div class="alerta alert alert-danger">
  					<strong>${mensagem}</strong>
				</div>
			</c:if>
			<c:if test="${mensagem == ''}">
				<div class="alerta alert alert-success">
  					<strong>${mensagem}</strong>
				</div>
			</c:if>			
		</div>
	</div>	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>