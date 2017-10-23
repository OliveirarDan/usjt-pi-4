package command;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.Usuario;
import service.UsuarioService;
import sun.misc.BASE64Encoder;

public class EditarUsuario implements Command
{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
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
		
		Part fotoPart = request.getPart("foto"); // Recebe a variavel de foto em um tipo Part
		String fotoTipo = Paths.get(fotoPart.getContentType()).getFileName().toString(); // Pega a extensão do arquivo
		InputStream fileContent = fotoPart.getInputStream(); // Transforma em um InputStrem
		BufferedImage imagem = ImageIO.read(fileContent); // Transforma o InputStream em BufferedImage
		String fotoPerfil = codificaParaString(imagem, fotoTipo); // Chama o método que transforma o BufferedImage em
		
		// instanciar o javabean
		Usuario usuario = new Usuario();
		usuario.setNome(uNome);
		usuario.setSobrenome(uSobrenome);
		usuario.setEmail(uEmail);
		usuario.setSenha(uSenha);
		//usuario.setFoto(fotoPerfil);

		// Instancia um usuário service
		UsuarioService us = new UsuarioService();
		HttpSession session = request.getSession();
		us.criar(usuario);

		// enviar para o jsp
		request.setAttribute("usuario", usuario);
		RequestDispatcher view = request.getRequestDispatcher("meus-dados.jsp");
		view.forward(request, response);

	}

	// Codifica imagem para string com base 64
	public static String codificaParaString(BufferedImage image, String tipo)
	{
		String imageString = null;
		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		try
		{
			ImageIO.write(image, tipo, bos);
			byte[] imageBytes = bos.toByteArray();

			BASE64Encoder encoder = new BASE64Encoder();
			imageString = encoder.encode(imageBytes);

			bos.close();
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		return imageString;
	}
}
