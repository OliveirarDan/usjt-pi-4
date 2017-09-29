package model;

import java.util.Date;

public class Estabelecimento extends Categoria
	{
		int id;
		String nome;
		double localizacao;
		Categoria categoria;
		Date horaInicial;
		Date honaFinal;
		int telefone;
		String site;

		public int getId()
			{
				return id;
			}

		public void setId(int id)
			{
				this.id = id;
			}

		public String getNome()
			{
				return nome;
			}

		public void setNome(String nome)
			{
				this.nome = nome;
			}

		public double getLocalizacao()
			{
				return localizacao;
			}

		public void setLocalizacao(double localizacao)
			{
				this.localizacao = localizacao;
			}

		public Categoria getCategoria()
			{
				return categoria;
			}

		public void setCategoria(Categoria categoria)
			{
				this.categoria = categoria;
			}

		public Date getHoraInicial()
			{
				return horaInicial;
			}

		public void setHoraInicial(Date horaInicial)
			{
				this.horaInicial = horaInicial;
			}

		public Date getHonaFinal()
			{
				return honaFinal;
			}

		public void setHonaFinal(Date honaFinal)
			{
				this.honaFinal = honaFinal;
			}

		public int getTelefone()
			{
				return telefone;
			}

		public void setTelefone(int telefone)
			{
				this.telefone = telefone;
			}

		public String getSite()
			{
				return site;
			}

		public void setSite(String site)
			{
				this.site = site;
			}
	}
