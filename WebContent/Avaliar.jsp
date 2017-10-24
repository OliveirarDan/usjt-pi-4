<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css" href="assets/css/estrelas.css" />
    
    <title>Avaliar Estabelecimento</title>
 

</head>

<body>
    <h3>Avaliação Estabelecimento</h3>
    
    <form action="controller.do" method="post">
    
    
    <div>
    	<div  id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante" class="stars">
		  	<fieldset id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante" class="star" >
		  		<br>
			  	<label id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante" class="labelPrincipal" >Acesso cadeirante: </label>
			  	<input class="star star-5" id="star-5" type="radio" name="aNotaAcessoCadeirante" value="5"/>
			    <label class="star star-5" for="star-5"></label>
			    <input class="star star-4" id="star-4" type="radio" name="aNotaAcessoCadeirante" value="4"/>
			    <label class="star star-4" for="star-4"></label>
			    <input class="star star-3" id="star-3" type="radio" name="aNotaAcessoCadeirante" value="3"/>
			    <label class="star star-3" for="star-3"></label>
			    <input class="star star-2" id="star-2" type="radio" name="aNotaAcessoCadeirante" value="2"/>
			    <label class="star star-2" for="star-2"></label>
			    <input class="star star-1" id="star-1" type="radio" name="aNotaAcessoCadeirante" value="1"/>
			    <label class="star star-1" for="star-1"></label>
		  	</fieldset>    	
		</div> 
	</div>	   
    <div>
    	<div  id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante" class="stars">
		  	<fieldset id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante" class="star" >
			  	<label id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante" class="labelPrincipal" >Sanitário cadeirante: </label>
			  	<input class="star star-5" id="star-6" type="radio" name="aNotaSanitarioCadeirante" value="5"/>
			    <label class="star star-5" for="star-6"></label>
			    <input class="star star-4" id="star-7" type="radio" name="aNotaSanitarioCadeirante" value="4"/>
			    <label class="star star-4" for="star-7"></label>
			    <input class="star star-3" id="star-8" type="radio" name="aNotaSanitarioCadeirante" value="3"/>
			    <label class="star star-3" for="star-8"></label>
			    <input class="star star-2" id="star-9" type="radio" name="aNotaSanitarioCadeirante" value="2"/>
			    <label class="star star-2" for="star-9"></label>
			    <input class="star star-1" id="star-10" type="radio" name="aNotaSanitarioCadeirante" value="1"/>
			    <label class="star star-1" for="star-10"></label>
		  	</fieldset>	
		</div>
    </div>
    <div>
   		<div  id="aNotaInstrucaoBraile" name="aNotaInstrucaoBraile" class="stars">
		  	<fieldset id="aNotaInstrucaoBraile" name="aNotaInstrucaoBraile" class="star" >
			  	<label id="aNotaInstrucaoBraile" name="aNotaInstrucaoBraile" class="labelPrincipal" >Sanitário cadeirante: </label>
			  	<input class="star star-5" id="star-11" type="radio" name="aNotaInstrucaoBraile" value="5"/>
			    <label class="star star-5" for="star-11"></label>
			    <input class="star star-4" id="star-12" type="radio" name="aNotaInstrucaoBraile" value="4"/>
			    <label class="star star-4" for="star-12"></label>
			    <input class="star star-3" id="star-13" type="radio" name="aNotaInstrucaoBraile" value="3"/>
			    <label class="star star-3" for="star-13"></label>
			    <input class="star star-2" id="star-14" type="radio" name="aNotaInstrucaoBraile" value="2"/>
			    <label class="star star-2" for="star-14"></label>
			    <input class="star star-1" id="star-15" type="radio" name="aNotaInstrucaoBraile" value="1"/>
			    <label class="star star-1" for="star-15"></label>
		  	</fieldset>	
		</div>
    </div>
    <div>
    	<div  id="aNotaSinalizacaoPiso" name="aNotaSinalizacaoPiso" class="stars">
		  	<fieldset id="aNotaSinalizacaoPiso" name="aNotaSinalizacaoPiso" class="star" >
			  	<label id="aNotaSinalizacaoPiso" name="aNotaSinalizacaoPiso" class="labelPrincipal" >Sanitário cadeirante: </label>
			  	<input class="star star-5" id="star-16" type="radio" name="aNotaSinalizacaoPiso" value="5"/>
			    <label class="star star-5" for="star-16"></label>
			    <input class="star star-4" id="star-17" type="radio" name="aNotaSinalizacaoPiso" value="4"/>
			    <label class="star star-4" for="star-17"></label>
			    <input class="star star-3" id="star-18" type="radio" name="aNotaSinalizacaoPiso" value="3"/>
			    <label class="star star-3" for="star-18"></label>
			    <input class="star star-2" id="star-19" type="radio" name="aNotaSinalizacaoPiso" value="2"/>
			    <label class="star star-2" for="star-19"></label>
			    <input class="star star-1" id="star-20" type="radio" name="aNotaSinalizacaoPiso" value="1"/>
			    <label class="star star-1" for="star-20"></label>
		  	</fieldset>	
		</div>
    
    
    </div>
    <div>
    <div>
<!-- 			<label id="" name="">Nota Geral: </label> -->
<!-- 		   	<select id="aNotaGeral" name="aNotaGeral">  -->
<!-- 		    <option value="1">1 estrela</option> -->
<!-- 		    <option value="2">2 estrela</option> -->
<!-- 		    <option value="3">3 estrela</option> -->
<!-- 		    <option value="4">4 estrela</option> -->
<!-- 		    <option value="5">5 estrela</option> -->
	</select>  
<!--     	<input type="text" placeholder="Media Nota" name="aNotaGeral" id="aNotaGeral"> -->
    </div>
    	
    </div>
    <br>
    <div>
    	<input type="text" placeholder="Comentario" name="aComentario" id="aComentario">
    </div>
    <br>
    <div>
    	<button type="submit" name="command" value="CriarAvaliacao">Cadastrar</button>
    	
    </div>
    
    
    
    </form>
    
    
</body>

</html>