package model;

public class Avaliacao
	{
		int id;
		int notaAcessoCadeirante;
		int notaSanitarioCadeirante;
		int notaInstrucaoBraile;
		int notaSinalizacaoPiso;
		double notaGeral;
		String comentario;
		
		public int getId()
			{
				return id;
			}
		public void setId(int id)
			{
				this.id = id;
			}
		public int getNotaAcessoCadeirante()
			{
				return notaAcessoCadeirante;
			}
		public void setNotaAcessoCadeirante(int notaAcessoCadeirante)
			{
				this.notaAcessoCadeirante = notaAcessoCadeirante;
			}
		public int getNotaSanitarioCadeirante()
			{
				return notaSanitarioCadeirante;
			}
		public void setNotaSanitarioCadeirante(int notaSanitarioCadeirante)
			{
				this.notaSanitarioCadeirante = notaSanitarioCadeirante;
			}
		public int getNotaInstrucaoBraile()
			{
				return notaInstrucaoBraile;
			}
		public void setNotaInstrucaoBraile(int notaInstrucaoBraile)
			{
				this.notaInstrucaoBraile = notaInstrucaoBraile;
			}
		public int getNotaSinalizacaoPiso()
			{
				return notaSinalizacaoPiso;
			}
		public void setNotaSinalizacaoPiso(int notaSinalizacaoPiso)
			{
				this.notaSinalizacaoPiso = notaSinalizacaoPiso;
			}
		public double getNotaGeral()
			{
				return notaGeral;
			}
		public void setNotaGeral(double d)
			{
				this.notaGeral = d;
			}
		public String getComentario()
			{
				return comentario;
			}
		public void setComentario(String comentario)
			{
				this.comentario = comentario;
			}	
	}
