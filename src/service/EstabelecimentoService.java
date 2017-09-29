package service;

import dao.EstabelecimentoDAO;
import model.Estabelecimento;;

public class EstabelecimentoService
	{
		EstabelecimentoDAO dao = new EstabelecimentoDAO();

		public void criar(Estabelecimento estabelecimento)
			{
				dao.criar(estabelecimento);
			}

		public void atualizar(Estabelecimento estabelecimento)
			{
				dao.atualizar(estabelecimento);
			}

		public void excluir(Estabelecimento estabelecimento)
			{
				dao.excluir(estabelecimento);
			}

		public Estabelecimento carregar(int id)
			{
				return dao.carregar(id);
			}
	}
