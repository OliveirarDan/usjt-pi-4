package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;

/**
 * Servlet implementation class ManterLoginController
 */
@WebServlet("/ManterLogin.do")
public class ManterLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
		{
			doPost(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
		{
			
			String uEmail = request.getParameter("email");
			String uSenha = request.getParameter("senha");  //senha digitada

			// instanciar o javabean
			Usuario usuario = new Usuario();
			usuario.setEmail(uEmail);
			
			// usuario.setSenha(uSenha);
			
			
			// INCLUIR O RECEBIMENTO DA VARIAVEL DE FOTO DE PERFIL

			// Instancia um usuário service
			UsuarioService us = new UsuarioService();
			/*
			 * Criam uma variavel para receber o e-mail digitado pelo usuário. O método
			 * emailExistente checa se o e-mail cadastrado já existe no banco e restorna um
			 * boolean que é usado como parâmetro para dar a mensagem de retorno para o jsp
			 * via dispatch
			 */
			int emailExistente = us.emailExistente(uEmail);						
			
			
			if (emailExistente == 0)
				{ 
					retornaRequest(request, response, "Usuário não encontrado.", usuario, "login.jsp");
				} else if (emailExistente == 1)
				{
					String senhaExistente = us.senhaExistente(uEmail);
					if (senhaExistente.equals(uSenha)) 
					{
						
						HttpSession session = request.getSession();
						session.getAttribute(uEmail);
						
						retornaRequest(request, response, "Entrando no sistema!", usuario,
								"login.jsp");					
						
					}else if(senhaExistente != uSenha )
					{
						retornaRequest(request, response, "Senha errada. " , usuario,
								"login.jsp");
					}
					else
					{
						retornaRequest(request, response, "Ocorreu um erro, verifique email e senha.", usuario,
								"login.jsp");
					}	
				} 
				
				else
				{
					// retona uma mensagem de erro generica.
					retornaRequest(request, response, "Ocorreu um erro.", usuario, "login.jsp");
				}

		}	
	


	// Método para verificação se o e-mail digitado já existe.
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
