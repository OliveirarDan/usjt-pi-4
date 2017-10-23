<%@ page contentType="text/html; charset=ISO-8859-1" language="java"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="pt-br">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png" />
<link rel="icon" type="image/png" href="assets/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Sem Barreiras | Você pode ir aonde você quiser</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<<!--  Arquivo de inclusao padrao de JS e CSS  -->
<jsp:include page="config.jsp"/>

<!--  JS  -->
<script src="assets/js/arrive.min.js"></script>
<script src="assets/js/perfect-scrollbar.jquery.min.js"></script>
<script src="assets/js/material.min.js" type="text/javascript"></script>
<script src="assets/js/material-dashboard.js"></script>
<script src="assets/js/index.js"></script>
<!--  Google Maps  -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaRg3rrIIM7Bs4n59Vb9tT15QOjYR9EUo"></script>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="blue"
			data-image="assets/img/sidebar-1.jpg">
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text"> Sem
					Barreiras </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="active"><a href="index.jsp"> <i
							class="material-icons">location_on</i>
							<p>Mapa</p>
					</a></li>
					<li><a href="javascript:void(0)" data-toggle="modal" data-target=".cadastrarEstabelecimento-modal"> <i class="material-icons">person</i>
							<p>Inserir novo local</p>
					</a></li>
					<li><a href=""> <i class="material-icons">content_paste</i>
							<p>Meus locais</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-transparent navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Alternar modo de navegação</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown "><a href="#"
								class="dropdown-toggle btn btn-white btn-round btn-just-icon"
								data-toggle="dropdown"> <i class="material-icons">notifications</i>
									<span class="notification">5</span>
									<p class="hidden-lg hidden-md">Notifications</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Você adicionou 1 novo local!</a></li>
								</ul></li>

						</ul>
						<form class="navbar-form navbar-right" role="search">
							<div class="form-group  is-empty">
								<input id="txtEndereco" name="txtEndereco" type="text"
									class="form-control" placeholder="Buscar"> <span
									class="material-input"></span>
							</div>
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</form>
					</div>
				</div>
			</nav>
			<div id="map"></div>
		</div>
		<div class="modal fade cadastrarEstabelecimento-modal" tabindex="-1"
			role="dialog" aria-labelledby="cadastrarEstabelecimento">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<jsp:include page="estabelecimento.jsp"/>
				</div>
			</div>
		</div>

	</div>
</body>

</html>
