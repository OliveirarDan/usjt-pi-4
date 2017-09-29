package model;

public class Avaliacao
	{
		int notaAcessoCadeirante;
		int notaSanitarioCadeirante;
		int notaInstrucaoBraile;
		int notaSinalizacaoPiso;
		int notaGeral;
		String comentario;
		
		
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
		public int getNotaGeral()
			{
				return notaGeral;
			}
		public void setNotaGeral(int notaGeral)
			{
				this.notaGeral = notaGeral;
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
