package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Avaliacao;
import service.AvaliacaoService;


public class CriarAvaliacao implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//dados da avaliacão
		String aId = request.getParameter("aId");
		String aNotaAcessoCadeirante = request.getParameter("aNotaAcessoCadeirante");
		String aNotaSanitarioCadeirante = request.getParameter("aNotaSanitarioCadeirante");
		String aNotaInstrucaoBraile = request.getParameter("aNotaInstrucaoBraile");
		String aNotaSinalizacaoPiso = request.getParameter("aNotaSinalizacaoPiso");
		String aNotaGeral = request.getParameter("aNotaGeral");
		String aComentario = request.getParameter("aComentario");
		int id =-1;
		try{
			id = Integer.parseInt(aId);
		} catch (NumberFormatException e){
			
		}
		
		//dados extras ESTABELECIMENTO
		int eId=1;
		
		//dados extras USUARIO
		int uId=1;
		
		//dados extras USUARIO
		int cId=1;
		
		
		//Instanciando o JavaBean Avaliacao
		Avaliacao avaliacao = new Avaliacao();
		avaliacao.setId(id);
		avaliacao.setNotaAcessoCadeirante(Integer.parseInt(aNotaAcessoCadeirante));
		avaliacao.setNotaSanitarioCadeirante(Integer.parseInt(aNotaSanitarioCadeirante));
		avaliacao.setNotaInstrucaoBraile(Integer.parseInt(aNotaInstrucaoBraile));
		avaliacao.setNotaSinalizacaoPiso(Integer.parseInt(aNotaSinalizacaoPiso));
		avaliacao.setNotaGeral(Double.parseDouble(aNotaGeral));
		avaliacao.setComentario(aComentario);
		avaliacao.setId_Estabelecimento(eId);
		avaliacao.setId_Usuario(uId);
		avaliacao.setId_Categoria(cId);
		
		
		//Instanciando o service
		AvaliacaoService as = new AvaliacaoService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		
		as.criar(avaliacao);
		ArrayList<Avaliacao> lista= new ArrayList<>();
		lista.add(avaliacao);
		session.setAttribute("lista", lista);
		view = request.getRequestDispatcher("ListarAvaliacoes.jsp");
		
		view.forward(request, response);
	}

}
