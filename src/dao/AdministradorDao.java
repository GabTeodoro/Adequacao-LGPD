package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnection;
import model.Administrador;

public class AdministradorDao {

	private Connection connection;

	public AdministradorDao() {

		connection = SingleConnection.getConnection();
	}

	public boolean validarAdministrador(String email, String senha) throws SQLException {

		String sql = "SELECT * FROM administrador WHERE email = '" + email + "' AND senha = '" + senha + "'";
		PreparedStatement validar = connection.prepareStatement(sql);
		ResultSet resultSet = validar.executeQuery();

		if (resultSet.next()) {
			return true;
		} else {
			return false;
		}

	}

	public void cadastrarAdministrador(Administrador administrador) {

		try {

			String sql = "INSERT INTO administrador (nome, cpf, email, senha) VALUES (?,?,?,?)";
			PreparedStatement inserir = connection.prepareStatement(sql);

			inserir.setString(1, administrador.getNome());
			inserir.setString(2, administrador.getCpf());
			inserir.setString(3, administrador.getEmail());
			inserir.setString(4, administrador.getSenha());

			inserir.execute();
			connection.commit();

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public Administrador buscarAdministrador(String email) {

		try {

			String sql = "SELECT * FROM administrador WHERE email = '" + email + "'";
			PreparedStatement buscar = connection.prepareStatement(sql);
			ResultSet resultadoBusca = buscar.executeQuery();

			if (resultadoBusca.next()) {

				Administrador administrador = new Administrador();
				administrador.setId(resultadoBusca.getLong("id"));
				administrador.setNome(resultadoBusca.getString("nome"));
				administrador.setCpf(resultadoBusca.getString("cpf"));
				administrador.setEmail(resultadoBusca.getString("email"));
				administrador.setSenha(resultadoBusca.getString("senha"));

				return administrador;

			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return null;
	}
	
	public void deletarAdministrador(String email) {
		
		try {
			
			String sql = "DELETE FROM administrador WHERE email = '" + email + "'";
			PreparedStatement deletar = connection.prepareStatement(sql);
			deletar.execute();
			connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	public Administrador editarAdministrador(Administrador administrador) {
		
		try {
			
			String sql = "UPDATE administrador SET nome = ?, cpf = ?, email = ?, senha = ? WHERE id = '" +
			administrador.getId() + "'";
			PreparedStatement atualizar = connection.prepareStatement(sql);
			
			atualizar.setString(1, administrador.getNome());
			atualizar.setString(2, administrador.getCpf());
			atualizar.setString(3, administrador.getEmail());
			atualizar.setString(4, administrador.getSenha());
			
			atualizar.execute();
			connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		return administrador;
	}

}
