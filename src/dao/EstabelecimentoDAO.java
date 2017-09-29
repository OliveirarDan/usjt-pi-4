package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Estabelecimento;

public class EstabelecimentoDAO
	{

		public void criar(Estabelecimento estabelecimento)
			{
				String sqlInsert = "INSERT INTO tbl_estabelecimento(nome, localizacao, hora_inicial, hora_final, telefone, site) "
						+ " VALUES (?, ?, ?, ?, ?, ?)";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlInsert);)
					{
						stm.setString(1, estabelecimento.getNome());
						stm.setDouble(2, estabelecimento.getLocalizacao());
						stm.setDate(3, (Date) estabelecimento.getHoraInicial());
						stm.setDate(4, (Date) estabelecimento.getHonaFinal());
						stm.setInt(5, estabelecimento.getTelefone());
						stm.setString(6, estabelecimento.getSite());
						
						stm.execute();
						String sqlQuery = "SELECT LAST_INSERT_ID()";
						try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
								ResultSet rs = stm2.executeQuery();)
							{
								if (rs.next())
									{
										estabelecimento.setId(rs.getInt(1));
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

		public void atualizar(Estabelecimento estabelecimento)
			{
				String sqlUpdate = "UPDATE tbl_estabelecimento SET nome=?, localizacao=?, hora_inicial=?, hora_final=?, telefone=?, site=? WHERE id_estabelecimento=?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlUpdate);)
					{
						stm.setString(1, estabelecimento.getNome());
						stm.setDouble(2, estabelecimento.getLocalizacao());
						stm.setDate(3, (Date) estabelecimento.getHoraInicial());
						stm.setDate(4, (Date) estabelecimento.getHonaFinal());
						stm.setInt(5, estabelecimento.getTelefone());
						stm.setString(6, estabelecimento.getSite());
						stm.setInt(7, estabelecimento.getId());
						stm.execute();
					} catch (Exception e)
					{
						e.printStackTrace();
					}
			}

		public void excluir(Estabelecimento estabelecimento)
			{
				String sqlDelete = "DELETE FROM tbl_estabelecimento WHERE id_estabelecimento = ?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlDelete);)
					{
						stm.setInt(1, estabelecimento.getId());
						stm.execute();
					} catch (Exception e)
					{
						e.printStackTrace();
					}
			}

		public Estabelecimento carregar(int id)
			{
				Estabelecimento estabelecimento = new Estabelecimento();
				estabelecimento.setId(id);
				String sqlSelect = "SELECT nome, localizacao, hora_inicial, hora_final, telefone, site FROM tbl_estabelecimento WHERE estabelecimento.id_estabelecimento = ?";
				try (Connection conn = ConnectionFactory.obtemConexao();
						PreparedStatement stm = conn.prepareStatement(sqlSelect);)
					{
						stm.setInt(1, estabelecimento.getId());
						try (ResultSet rs = stm.executeQuery();)
							{
								if (rs.next())
									{
										estabelecimento.setNome(rs.getString("nome"));
										estabelecimento.setLocalizacao(rs.getDouble("localizacao"));
										estabelecimento.setHoraInicial(rs.getDate("hora_inicial"));
										estabelecimento.setHonaFinal(rs.getDate("hora_final"));
										estabelecimento.setTelefone(rs.getInt("telefone"));
										estabelecimento.setSite(rs.getString("site"));

									} else
									{
										estabelecimento.setId(-1);
										estabelecimento.setNome(null);
										estabelecimento.setLocalizacao(-1);
										estabelecimento.setHoraInicial(null);
										estabelecimento.setHonaFinal(null);
										estabelecimento.setTelefone(-1);
										estabelecimento.setSite(null);
									}
							} catch (SQLException e)
							{
								e.printStackTrace();
							}
					} catch (SQLException e1)
					{
						System.out.print(e1.getStackTrace());
					}
				return estabelecimento;
			}
	}
