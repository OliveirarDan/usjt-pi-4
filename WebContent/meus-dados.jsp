<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="model.Usuario"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- referencias de CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<!--  Material Dashboard CSS    -->
<link href="assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />

<!-- verifica se há um usuário logado. -->
<%-- 
<c:if test="${empty sessionScope['login']}">
    <c:redirect url="login.jsp" />
</c:if>
--%>

<title>Sem Barreiras | Meus Dados</title>

</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#myModal">Abrir modal</button>


	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="container-fluid">
				<div class="row">
					<form action="controller.do" method="post">
						<div class="col-xs-8">
							<div class="card">
								<div class="card-header" data-background-color="blue">
									<h4 class="title">Meus dados</h4>
									<p class="category">Atualize seus dados</p>
								</div>

								<div class="card-content">
									<div class="row">
										<div class="col-xs-6">
											<div class="form-group label-floating is-empty">
												<label class="control-label">Nome</label> 
												<input type="text" class="form-control" name="nome" id="nome" value="${usuario.nome}" /> 
												<span class="material-input"></span>
											</div>
										</div>
										<div class="col-xs-6">
											<div class="form-group label-floating is-empty">
												<label class="control-label">Sobrenome</label> 
												<input type="text" class="form-control" name="sobrenome" id="sobrenome" value="${usuario.sobrenome}" /> 
												<span class="material-input"></span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group label-floating is-empty">
												<label class="control-label">E-mail (login)</label> 
												<input type="email" class="form-control" name="email" id="email" value="${usuario.email}" /> 
												<span class="material-input"></span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6">
											<div class="form-group label-floating is-empty">
												<label class="control-label">Senha</label> 
												<input type="password" class="form-control" name="senha" id="senha" value="${usuario.senha}"> 
												<span class="material-input"></span>
											</div>
										</div>
									</div>
								</div>
								<!-- modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
									<button type="submit" name="command" value="EditarUsuario" class="btn btn-primary">Salvar alterações</button>
								</div>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="card card-profile">
								<div class="card-avatar">
									<!-- verifica se há uma foto de usuário, senão preenche com uma imagem default -->
									<c:if test="${empty usuario.foto}">
										<a href="#foto"> 
										<img class="img" src="assets\img\profile.jpg"></a>
									</c:if>
									<c:if test="${not empty usuario.foto}">
										<a href="#foto"> 
										<img class="img"></a>								
									</c:if>									
								</div>
								<div class="content">
									<p class="card-content">
										<input type="file" onchange="previewFile()" class="btn" name="foto" = b64 id="foto" value="Alterar foto">
									</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- final da div modal -->
		</div>
	</div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js" type="text/javascript"></script>
<script src="assets/js/meus-dados.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script src="assets/js/perfect-scrollbar.jquery.min.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="assets/js/material-dashboard.js?v=1.2.0"></script>

</html>