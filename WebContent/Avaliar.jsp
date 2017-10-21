<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Cadastrar Estabelecimento</title>
 

</head>

<body>
    <h3>Avaliar Estabelecimento</h3>
    
    <form action="controller.do" method="post">
    
    <div>
    	<label id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante">Acesso cadeirante: </label>
    	<select id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante">
		    <option value="1">1 estrela</option>
		    <option value="2">2 estrela</option>
		    <option value="3">3 estrela</option>
		    <option value="4">4 estrela</option>
		    <option value="5">5 estrela</option>
		</select>
<!--     	<input type= placeholder="Nota Acesso Cadeirante" name="aNotaAcessoCadeirante" id="aNotaAcessoCadeirante"> -->
    </div>
    <div>
    	<label id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante">Sanitário cadeirante: </label>
    	<select id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante">
		    <option value="1">1 estrela</option>
		    <option value="2">2 estrela</option>
		    <option value="3">3 estrela</option>
		    <option value="4">4 estrela</option>
		    <option value="5">5 estrela</option>
		</select>
<!--     	<input type="text" placeholder="Nota Sanitário Cadeirante" name="aNotaSanitarioCadeirante" id="aNotaSanitarioCadeirante"> -->
    </div>
    <div>
    	<label id="aNotaInstrucaoBraile" name="aNotaInstrucaoBraile">Instrucao Braile: </label>
    	<select id="aNotaInstrucaoBraile" name="aNotaInstrucaoBraile">
		    <option value="1">1 estrela</option>
		    <option value="2">2 estrela</option>
		    <option value="3">3 estrela</option>
		    <option value="4">4 estrela</option>
		    <option value="5">5 estrela</option>
		</select>
<!--     	<input type="text" placeholder="Nota Instrucao Braile" name="aNotaInstrucaoBraile" id="aNotaInstrucaoBraile"> -->
    </div>
    <div>
    	<label id="aNotaSinalizacaoPiso" name="aNotaSinalizacaoPiso">Sinalização Piso: </label>
    	<select id="aNotaSinalizacaoPiso" name="aNotaSinalizacaoPiso">
		    <option value="1">1 estrela</option>
		    <option value="2">2 estrela</option>
		    <option value="3">3 estrela</option>
		    <option value="4">4 estrela</option>
		    <option value="5">5 estrela</option>
		</select>
<!--     	<input type="text" placeholder="Nota Sinalizacao Piso" name="aNotaSinalizacaoPiso" id="aNotaSinalizacaoPiso"> -->
    </div>
    <div>
    	<label id="aNotaGeral" name="aNotaGeral">Nota Geral: </label>
    	<select id="aNotaGeral" name="aNotaGeral">
		    <option value="1">1 estrela</option>
		    <option value="2">2 estrela</option>
		    <option value="3">3 estrela</option>
		    <option value="4">4 estrela</option>
		    <option value="5">5 estrela</option>
		</select>
<!--     	<input type="text" placeholder="Media Nota" name="aNotaGeral" id="aNotaGeral"> -->
    </div>
    <div>
    	<input type="text" placeholder="Comentario" name="aComentario" id="aComentario">
    </div>
    <div>
    	<button type="submit" name="command" value="CriarAvaliacao">Cadastrar</button>
    </div>
    
    
    
    </form>
    
    
</body>

</html>