package service;

import dao.UsuarioDAO;

//comentario qualquer
import model.Usuario;;

public class UsuarioService
	{
		UsuarioDAO dao = new UsuarioDAO();

		public void criar(Usuario usuario)
			{
				dao.criar(usuario);
			}

		public void atualizar(Usuario usuario)
			{
				dao.atualizar(usuario);
			}

		public void excluir(Usuario usuario)
			{
				dao.excluir(usuario);
			}

		public Usuario carregar(int id)
			{
				return dao.carregar(id);
			}
	}
