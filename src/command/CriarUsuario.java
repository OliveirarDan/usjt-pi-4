package command;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;
import service.UsuarioService;

public class CriarUsuario implements Command
{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		request.setCharacterEncoding("UTF-8");
		// dados de usuario
		String uId = request.getParameter("aId");
		String uNome = request.getParameter("nome");
		String uSobrenome = request.getParameter("sobrenome");
		String uEmail = request.getParameter("email");
		String uSenha = request.getParameter("senha");
		int id = -1;
		try
		{
			id = Integer.parseInt(uId);
		} catch (NumberFormatException e)
		{

		}

		// instanciar o javabean
		Usuario usuario = new Usuario();
		usuario.setNome(uNome);
		usuario.setSobrenome(uSobrenome);
		usuario.setEmail(uEmail);
		usuario.setSenha(uSenha);

		// Instancia um usu�rio service
		UsuarioService us = new UsuarioService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		/*
		 * Criam uma variavel para receber o e-mail digitado pelo usu�rio. O m�todo
		 * emailExistente checa se o e-mail cadastrado j� existe no banco e restorna um
		 * boolean que � usado como par�metro para dar a mensagem de retorno para o jsp
		 * via dispatch
		 */
		int emailExistente = us.emailExistente(uEmail);
		if (emailExistente == 0)
		{
			us.criar(usuario);
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
