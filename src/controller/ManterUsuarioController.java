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

				// Instancia um usu�rio service
				UsuarioService us = new UsuarioService();

				/*
				 * Criam uma variavel para receber o e-mail digitado pelo usu�rio. O m�todo
				 * emailExistente checa se o e-mail cadastrado j� existe no banco e restorna um
				 * boolean que � usado como par�metro para dar a mensagem de retorno para o jsp
				 * via dispatch
				 */
				int emailExistente = us.emailExistente(uEmail);
				if (emailExistente == 0)
					{
						us.criar(usuario); // criar um tipo de retorno podendo ser boolean ou string para garantir que o
											// usuario foi inserido com sucesso.
						retornaRequest(request, response, "Cadastro realizado com sucesso.", usuario, "cadastro.jsp");
					} else if (emailExistente == 1)
					{
						// retonar string com mensagem de email repetido.
						retornaRequest(request, response, "Este e-mail j� existe, tente outro.", usuario, "cadastro.jsp");
					} else
					{
						// retona uma mensagem de erro generica.
						retornaRequest(request, response, "Ocorreu um erro.", usuario, "cadastro.jsp");
					}
			}

		// M�todo para verifica��o se o e-mail digitado j� existe.
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
