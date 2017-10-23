<%@ page contentType="text/html; charset=ISO-8859-1" language="java"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  Arquivo de inclusao padrao de JS e CSS  -->
<jsp:include page="config.jsp" />
<div class="card">
	<div class="card-header" data-background-color="blue">
		<h4 class="title">Novo Local</h4>
		<p class="category">Cadastre um novo estabelecimento</p>
	</div>
	<div class="card-content">
		<form>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Latitude</label> <input
							id="txtLatitude" name="txtLatitude" type="text"
							class="form-control">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Longitude</label> <input
							id="txtLongitude" name="txtLongitude" type="text"
							class="form-control">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group label-floating">
						<label class="control-label">Endereço</label> <input id="cadastroEndereco" name="cadastroEndereco" type="text"
							class="form-control" disabled>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Aberto das:</label> <input
							id="cadHrAbertura" name="cadHrAbertura" type="text"
							class="form-control">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Até</label> <input
							id="cadHrFechamento" name="cadHrFechamento" type="text"
							class="form-control">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<div class="form-group label-floating">
						<label class="control-label">Company (disabled)</label> <input
							type="text" class="form-control" disabled>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group label-floating">
						<label class="control-label">Username</label> <input type="text"
							class="form-control time24">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group label-floating">
						<label class="control-label">Email address</label> <input
							type="email" class="form-control">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Fist Name</label> <input type="text"
							class="form-control">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group label-floating">
						<label class="control-label">Last Name</label> <input type="text"
							class="form-control">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="form-group label-floating">
						<label class="control-label">City</label> <input type="text"
							class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group label-floating">
						<label class="control-label">Country</label> <input type="text"
							class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group label-floating">
						<label class="control-label">Postal Code</label> <input
							type="text" class="form-control">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>About Me</label>
						<div class="form-group label-floating">
							<label class="control-label"> Lamborghini Mercy, Your
								chick she so thirsty, I'm in that two seat Lambo.</label>
							<textarea class="form-control" rows="5"></textarea>
						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary pull-right">Update
				Profile</button>
			<div class="clearfix"></div>
		</form>
	</div>
</div>
<script>

var

$demoMaskedInput.find('.time24').inputmask('hh:mm', { placeholder: '__:__ _m', alias: 'time24', hourFormat: '24' });
</script>