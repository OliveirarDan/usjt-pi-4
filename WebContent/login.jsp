<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="model.Usuario"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="assets/css/login.css" rel="stylesheet" />
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/login.js" type="text/javascript"></script>
	<title>Sem Barreiras | Login</title>
</head>
<body>
	<div class="cadastro-page">		
	
		<!-- formulário de login -->
		<div class="form form-group col-md-12">			
			<h3>Login</h3>
			<form class="login-form" action="ManterLogin.do" method="post">
			
			<div class="row">
				<div class="form-group col-md-12">
					<input type="email" placeholder="Login (e-mail)" name="email" id="email" required maxlength="150" value="${usuario.email}"/> 
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<input type="password" placeholder="Senha" name="senha" id="senha" required maxlength="45"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<button type="submit" nome="acao">Entrar</button>
				</div>
			</div>
				<p class="message">
					<a href="login.html"> Esqueceu a senha?</a>
				</p>							
			</form>
			
			<!-- verifica o retorno da mensagem e exibe o alert adequado. -->
			<c:choose>
				<c:when test="${mensagem.equals('')}">
					<div class="alert alert-success">
	  					<strong>${mensagem}</strong>
					</div>
				</c:when>
				<c:otherwise>
					<div class="alert alert-danger">
	  					<strong>${mensagem}</strong>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>