package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Estabelecimento;

public class ListarEstabelecimentoDAO {

			
		public ArrayList<Estabelecimento> listarEstabelecimento() {
			ArrayList<Estabelecimento> estabelecimentos = new ArrayList<>();
			String sqlSelect = "SELECT id, nome, endereco, horario, telefone, email, site, categoria FROM tbl_estabelecimento";
			Estabelecimento estabelecimento;

			try (Connection conn = ConnectionFactory.obtemConexao();
					PreparedStatement stm = conn.prepareStatement(sqlSelect);
					ResultSet rs = stm.executeQuery();) {
					while (rs.next()) {
						estabelecimento = new Estabelecimento();
						estabelecimento.setId(rs.getInt("id"));
						estabelecimento.setNome(rs.getString("nome"));
						estabelecimento.setEndereco(rs.getString("endereco"));
						estabelecimento.setHorario(rs.getString("horario"));
						estabelecimento.setTelefone(rs.getString("telefone"));
						estabelecimento.setSite(rs.getString("site"));
						estabelecimentos.add(estabelecimento);
					} 
			} catch (SQLException e1) {
				System.out.print(e1.getStackTrace());
			}
			return estabelecimentos;
		}
		
		public ArrayList<Estabelecimento> listarEstabelecimento(String chave) {
			Estabelecimento estabelecimento;
			ArrayList<Estabelecimento> estabelecimentos = new ArrayList<>();
			String sqlSelect = "SELECT id, nome, endereco, horario, telefone, email, site, categoria FROM tbl_estabelecimento where upper(nome) like ?";
			try (Connection conn = ConnectionFactory.obtemConexao();
					PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
				try (ResultSet rs = stm.executeQuery();) {
					while (rs.next()) {
						estabelecimento = new Estabelecimento();
						estabelecimento.setId(rs.getInt("id"));
						estabelecimento.setNome(rs.getString("nome"));
						estabelecimento.setNome(rs.getString("endereco"));
						estabelecimento.setNome(rs.getString("horario"));
						estabelecimento.setNome(rs.getString("telefone"));
						estabelecimento.setSite(rs.getString("site"));
						estabelecimentos.add(estabelecimento);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (SQLException e1) {
				System.out.print(e1.getStackTrace());
			}
			return estabelecimentos;
		}

	}
