<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:600" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCaRg3rrIIM7Bs4n59Vb9tT15QOjYR9EUo"></script>
    <script type="text/javascript" src="apiMaps/jquery.min.js"></script>
    <script type="text/javascript" src="apiMaps/mapa.js"></script>
    <script type="text/javascript" src="apiMaps/jquery-ui.custom.min.js"></script>
    <title>Cadastrar Estabelecimento</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:600" type="text/css" rel="stylesheet" />
    <link href="apiMaps/estilo.css" type="text/css" rel="stylesheet" />

</head>

<body>
     <div id="apresentacao">

            <h1>Google Maps API v3: Busca de endereço e Autocomplete - Demo</h1>
    
            <form method="post" action="ManterEstabelecimento.do">    
                <fieldset>

                    <legend>Google Maps API v3: Busca de endereço e Autocomplete - Demo</legend>    
            
                    <div class="campos">
                    	
                    	<br>
                    	
                    	<div >
                    		<p>
	                    		<label for="txtNome">Nome:</label>
	                        	<input type="text"  id="txtNome" name="txtNome" />
	                    	</p>
                    	</div>
                    	
						<br>                    
                    	<div class="row">	
                    		<br>
                    		<p>
                    			<label for="txtEndereco">Endereço:</label>
                        		<input type="text" class="form-control" id="txtEndereco" name="txtEndereco" />
                    		    <input type="button" id="btnEndereco" name="btnEndereco" value="Mostrar no mapa" />
                    		</p>
                    	</div>
                    	<br>	
                    	<div class="row">	
                    		
                    	</div>
                    	<div >
                    		<p>
	                    		<label for="txtHorario">Horário de funcionamento:</label>
	                        	<input type="text"  id="txtHorario" name="txtHorario" />
	                    	</p>
                    	</div>
                    	<div >
                    		<p>
	                    		<label for="txtTelefone">Telefone:</label>
	                        	<input type="text"  id="txtTelefone" name="txtTelefone" />
	                    	</p>
                    	</div>
                    	<div >
                    		<p>
	                    		<label for="txtEmail">E-mail:</label>
	                        	<input type="text"  id="txtEmail" name="txtEmail" />
	                    	</p>
                    	</div>
                    	<div >
                    		<p>
	                    		<label for="txtSite">Site:</label>
	                        	<input type="text"  id="txtSite" name="txtSite" />
	                    	</p>
                    	</div><div >
                    		<p>
	                    		<label for="optCategoria">Categoria:</label>
	                        	
	                        	<select id="optCategoria" name="optCategoria">
								    <option value="1">Bar</option>
								    <option value="2">Cinema</option>
								    <option value="3">Restaurante</option>
								    <option value="4">Hotel</option>
								</select>
	                    	</p>
                    	</div>
                    	
                    	<br>
                    	<div class="row">	
                    		<p>
                    			<input type="text" class="form-control" id="txtLatitude" name="txtLatitude" />
                    		</p>
                    	</div>
                    	
                    	<div>	
                    		<br>
                    		<p>	
                    			<input type="text" class="form-control" id="txtLongitude" name="txtLongitude" />
                    		</p>
                    	</div>
                    
                    
                    </div>

                    <div id="mapa"></div>
                    
                	
                    
                    
					<p>
					
					<button type="submit"  name="acao" value="Criar" name="btnEnviar" >Salvar</button>
					
					
                </fieldset>
            </form>

            

        </div>
</body>

</html>
