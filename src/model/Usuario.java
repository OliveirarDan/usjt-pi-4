package model;

import java.awt.image.BufferedImage;

public class Usuario
	{
		int id;
		String nome;
		String sobrenome;
		String email;
		String senha;
		BufferedImage foto;
		
		
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
		public String getSobrenome()
			{
				return sobrenome;
			}
		public void setSobrenome(String sobrenome)
			{
				this.sobrenome = sobrenome;
			}
		public String getEmail()
			{
				return email;
			}
		public void setEmail(String email)
			{
				this.email = email;
			}
		public String getSenha()
			{
				return senha;
			}
		public void setSenha(String senha)
			{
				this.senha = senha;
			}
		public BufferedImage getFoto()
			{
				return foto;
			}
		public void setFoto(BufferedImage foto)
			{
				this.foto = foto;
			}
		
		@Override
		public String toString()
			{
				return "Usuario [id=" + id + ", nome=" + nome + ", sobrenome=" + sobrenome + ", email=" + email
						+ ", senha=" + senha + ", foto=" + foto + "]";
			} 		
	}
