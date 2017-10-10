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

				UsuarioService us = new UsuarioService();
				int emailExistente = us.emailExistente(uEmail);
				if (emailExistente == 0)
					{
						us.criar(usuario); // criar um tipo de retorno podendo ser boolean ou string para garantir que o usuario foi inserido com sucesso.
						retornaRequest(request, response, "", usuario, "cadastro.jsp");
					} else if (emailExistente == 1)
					{
						// retonar string com mensagem de email repetido
						retornaRequest(request, response, "Email existente.", usuario, "cadastro.jsp");
					} else
					{
						// retona uma mensagem de erro generica
						retornaRequest(request, response, "Ocorreu um erro.", usuario,"cadastro.jsp");
					}
			}

		protected void retornaRequest(HttpServletRequest request, HttpServletResponse response, String erro,
				Usuario usuario, String url) throws ServletException, IOException
			{
				if (!erro.isEmpty())
					{
						request.setAttribute("mensagem", erro);
					}

				request.setAttribute("usuario", usuario);
				RequestDispatcher viewErro = request.getRequestDispatcher(url);
				viewErro.forward(request, response);
			}
	}
