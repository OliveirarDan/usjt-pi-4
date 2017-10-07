package controller;

import service.UsuarioService;
import model.Usuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManterUsuario.do")
public class ManterUsuarioController extends HttpServlet
	{
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException
			{
				doPost(request, response);
			}

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException
			{
				String uNome = request.getParameter("nome");
				String uSobrenome = request.getParameter("sobrenome");
				String uEmail = request.getParameter("email");
				String uSenha = request.getParameter("senha");
				// INCLUIR O RECEBIMENTO DA VARIAVEL DE FOTO DE PERFIL

				// instanciar o javabean
				Usuario usuario = new Usuario();
				usuario.setNome(uNome);
				usuario.setSobrenome(uSobrenome);
				usuario.setEmail(uEmail);
				usuario.setSenha(uSenha);
				// INCLUIR O RECEBIMENTO DA VARIAVEL DE FOTO DE PERFIL

				// instanciar o service
				UsuarioService us = new UsuarioService();
				us.criar(usuario);
				usuario = us.carregar(usuario.getId());

				// enviar para o jsp
				request.setAttribute("usuario", usuario);

				RequestDispatcher view = request.getRequestDispatcher("cadastro.jsp");
				view.forward(request, response);
			}
	}
