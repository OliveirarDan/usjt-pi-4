<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Alterar Avaliação</title>

            
        </head>

        <body>
                
                <!-- Container Principal -->
                <div >
                    <h3 >Alterar Avaliacao #${avaliacao.id }</h3>
                    <!-- Formulario para alteração de Avaliacao -->
                    <form action="controller.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="aId" value="${avaliacao.id }" />
                        
                        <h3>Avaliar Estabelecimento</h3>
   
    
					    <div>
					    
					    	
					    
					    	<label id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante">Acesso cadeirante: </label>
					    	<select id="aNotaAcessoCadeirante" name="aNotaAcessoCadeirante">
						    	<option value="${avaliacao.notaAcessoCadeirante}" selected="selected"> ${avaliacao.notaAcessoCadeirante} estrela(s)</option> 
							    <option value="1">1 estrela</option>
							    <option value="2">2 estrelas</option>
							    <option value="3">3 estrelas</option>
							    <option value="4">4 estrelas</option>
							    <option value="5">5 estrelas</option>
							</select>
					<!--     	<input type= placeholder="Nota Acesso Cadeirante" name="aNotaAcessoCadeirante" id="aNotaAcessoCadeirante"> -->
					    </div>
					    <div>
					    	<label id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante">Sanitário cadeirante: </label>
					    	<select id="aNotaSanitarioCadeirante" name="aNotaSanitarioCadeirante">
					    		<option value="${avaliacao.notaSanitarioCadeirante}" selected="selected"> ${avaliacao.notaSanitarioCadeirante} estrela(s)</option>
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
					    		<option value="${avaliacao.notaInstrucaoBraile}" selected="selected"> ${avaliacao.notaInstrucaoBraile} estrela(s)</option>
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
					    		<option value="${avaliacao.notaSinalizacaoPiso}" selected="selected"> ${avaliacao.notaSinalizacaoPiso} estrela(s)</option>
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
					    		<option value="${avaliacao.notaGeral}" selected="selected"> ${avaliacao.notaGeral} estrela(s)</option>
							    <option value="1">1 estrela</option>
							    <option value="2">2 estrela</option>
							    <option value="3">3 estrela</option>
							    <option value="4">4 estrela</option>
							    <option value="5">5 estrela</option>
							</select>
					<!--     	<input type="text" placeholder="Media Nota" name="aNotaGeral" id="aNotaGeral"> -->
					    </div>
					    <div>
					    	<input type="text" placeholder="Comentario" name="aComentario" id="aComentario" value="${avaliacao.comentario}">
					    </div>
					                        
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit"  name="command" value="EditarAvaliacao">Salvar</button>
                                <button type="submit"  name="command" value="ExcluirAvaliacao">Excluir</button>
                            </div>
                        </div>
                    </form>
                </div>
               
        </body>

        </html>