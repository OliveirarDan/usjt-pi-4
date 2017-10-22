package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Avaliacao;

public class AvaliacaoDAO
	{

		public void criar(Avaliacao avaliacao)
			{
				String sqlInsert = "INSERT INTO tbl_avaliacao(nota_acesso_cadeirante,nota_sanitario_cadeirante,nota_instrucao_braile,nota_sinalizacao_piso,media_nota,comentario,tbl_usuario_Id_usuario,tbl_estabelecimento_id_estabelecimento,tbl_estabelecimento_tbl_categoria_id_categoria)"
						+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlInsert);)
					{
						stm.setInt(1, avaliacao.getNotaAcessoCadeirante());
						stm.setInt(2, avaliacao.getNotaSanitarioCadeirante());
						stm.setInt(3, avaliacao.getNotaInstrucaoBraile());
						stm.setInt(4, avaliacao.getNotaSinalizacaoPiso());
						stm.setDouble(5, avaliacao.getNotaGeral());
						stm.setString(6, avaliacao.getComentario());
						stm.setInt(7, avaliacao.getId_Usuario());
						stm.setInt(8, avaliacao.getId_Estabelecimento());
						stm.setInt(9, avaliacao.getId_Categoria());
						
						stm.execute();
						String sqlQuery = "SELECT LAST_INSERT_ID()";
						try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
								ResultSet rs = stm2.executeQuery();)
							{
								if (rs.next())
									{
										avaliacao.setId(rs.getInt(1));
									}
							} catch (SQLException e)
							{
								e.printStackTrace();
							}
					} catch (SQLException e)
					{
						e.printStackTrace();
					}
			}

		public void atualizar(Avaliacao avaliacao)
			{
				String sqlUpdate = "UPDATE tbl_avaliacao SET nota_acesso_cadeirante=?, nota_sanitario_cadeirante=?, nota_instrucao_braile=?, "
						+ "nota_sinalizacao_piso=?, media_nota=?, comentario=? WHERE id_avaliacao=?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlUpdate);)
					{
						stm.setInt(1, avaliacao.getNotaAcessoCadeirante());
						stm.setInt(2, avaliacao.getNotaSanitarioCadeirante());
						stm.setInt(3, avaliacao.getNotaInstrucaoBraile());
						stm.setInt(4, avaliacao.getNotaSinalizacaoPiso());
						stm.setDouble(5, avaliacao.getNotaGeral());
						stm.setString(6, avaliacao.getComentario());
						stm.setInt(7, avaliacao.getId());
						stm.execute();
					} catch (Exception e)
					{
						e.printStackTrace();
					}
			}

		public void excluir(Avaliacao avaliacao)
			{
				String sqlDelete = "DELETE FROM tbl_avaliacao WHERE id_avaliacao = ?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlDelete);)
					{
						stm.setInt(1, avaliacao.getId());
						stm.execute();
					} catch (Exception e)
					{
						e.printStackTrace();
					}
			}

		public Avaliacao carregar(int id)
			{
				Avaliacao avaliacao = new Avaliacao();
				avaliacao.setId(id);
				String sqlSelect = "SELECT nota_acesso_cadeirante,nota_sanitario_cadeirante,nota_instrucao_braile,nota_sinalizacao_piso,media_nota,comentario,tbl_usuario_Id_usuario,tbl_estabelecimento_id_estabelecimento,tbl_estabelecimento_tbl_categoria_id_categoria"
						+ " FROM tbl_avaliacao WHERE tbl_avaliacao.id_avaliacao = ?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlSelect);)
					{
						stm.setInt(1, avaliacao.getId());
						try (ResultSet rs = stm.executeQuery();)
							{
								if (rs.next())
									{
										avaliacao.setNotaAcessoCadeirante(rs.getInt("nota_acesso_cadeirante"));
										avaliacao.setNotaSanitarioCadeirante(rs.getInt("nota_sanitario_cadeirante"));
										avaliacao.setNotaInstrucaoBraile(rs.getInt("nota_instrucao_braile"));
										avaliacao.setNotaSinalizacaoPiso(rs.getInt("nota_sinalizacao_piso"));
										avaliacao.setNotaGeral(rs.getDouble("media_nota"));
										avaliacao.setComentario(rs.getString("comentario"));
										avaliacao.setId_Usuario(rs.getInt("tbl_usuario_Id_usuario"));
										avaliacao.setId_Estabelecimento(rs.getInt("tbl_estabelecimento_id_estabelecimento"));
										avaliacao.setId_Categoria(rs.getInt("tbl_estabelecimento_tbl_categoria_id_categoria"));

									} else
									{
										avaliacao.setId(-1);
										avaliacao.setNotaAcessoCadeirante(-1);
										avaliacao.setNotaSanitarioCadeirante(-1);
										avaliacao.setNotaInstrucaoBraile(-1);
										avaliacao.setNotaSinalizacaoPiso(-1);
										avaliacao.setNotaGeral(-1);
										avaliacao.setComentario(null);
										avaliacao.setId_Usuario(-1);
										avaliacao.setId_Estabelecimento(-1);
										avaliacao.setId_Categoria(rs.getInt(-1));
									}
							} catch (SQLException e)
							{
								e.printStackTrace();
							}
					} catch (SQLException e1)
					{
						System.out.print(e1.getStackTrace());
					}
				return avaliacao;
			}
	}
