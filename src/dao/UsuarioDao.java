package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnection;
import model.Usuario;

public class UsuarioDao {

	private Connection connection;

	public UsuarioDao() {
		connection = SingleConnection.getConnection();
	}

	// Método usado no Login.
	public boolean validarUsuario(String email, String senha) throws SQLException {

		String sql = "SELECT * FROM usuario WHERE email = '" + email + "' AND senha = '" + senha + "'";
		PreparedStatement validar = connection.prepareStatement(sql);
		ResultSet resultSet = validar.executeQuery();
		connection.commit();

		if (resultSet.next()) {
			return true;
		} else {
			return false;
		}

	}

	// Validando se o email já foi cadastrado.
	public boolean validarEmail(String email) {

		try {
			String sql = "SELECT COUNT(1) AS qtd FROM usuario WHERE email = '" + email + "'";
			PreparedStatement validar = connection.prepareStatement(sql);
			ResultSet resultado = validar.executeQuery();

			if (resultado.next()) {

				return resultado.getInt("qtd") <= 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return false;
	}

	public boolean validarUsuarioEdit(String email, String id) {

		try {

			String sql = "SELECT COUNT(1) AS qtd FROM usuario WHERE email = '" + email + "' AND id <> '" + id + "'";
			PreparedStatement validar = connection.prepareStatement(sql);
			ResultSet resultSet = validar.executeQuery();

			if (resultSet.next()) {

				return resultSet.getInt("qtd") <= 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return false;
	}

	public void cadastrarUsuario(Usuario usuario) {

		try {

			String sql = "INSERT INTO usuario (nome, cpf, email, senha, rg, area, cargo) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement cadastrar = connection.prepareStatement(sql);

			cadastrar.setString(1, usuario.getNome());
			cadastrar.setString(2, usuario.getCpf());
			cadastrar.setString(3, usuario.getEmail());
			cadastrar.setString(4, usuario.getSenha());
			cadastrar.setString(5, usuario.getRg());
			cadastrar.setString(6, usuario.getArea());
			cadastrar.setString(7, usuario.getCargo());

			cadastrar.execute();
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

	public Usuario buscarUsuario(String email) {

		try {

			String sql = "SELECT * FROM usuario WHERE email = '" + email + "'";
			PreparedStatement buscar = connection.prepareStatement(sql);
			ResultSet resultadoBusca = buscar.executeQuery();

			if (resultadoBusca.next()) {

				Usuario usuario = new Usuario();
				usuario.setId(resultadoBusca.getLong("id"));
				usuario.setNome(resultadoBusca.getString("nome"));
				usuario.setCpf(resultadoBusca.getString("cpf"));
				usuario.setEmail(resultadoBusca.getString("email"));
				usuario.setSenha(resultadoBusca.getString("senha"));
				usuario.setRg(resultadoBusca.getString("rg"));
				usuario.setArea(resultadoBusca.getString("area"));
				usuario.setCargo(resultadoBusca.getString("cargo"));

				return usuario;
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

	public void deletarUsuario(String email) {

		try {

			String sql = "DELETE FROM usuario WHERE email = '" + email + "'";
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

	public Usuario editarUsuario(Usuario usuario) {

		try {

			String sql = "UPDATE usuario SET nome = ?, cpf = ?, email = ?, senha = ?, rg = ?, area = ?, cargo = ? WHERE id = '"
					+ usuario.getId() + "'";
			PreparedStatement atualizar = connection.prepareStatement(sql);

			atualizar.setString(1, usuario.getNome());
			atualizar.setString(2, usuario.getCpf());
			atualizar.setString(3, usuario.getEmail());
			atualizar.setString(4, usuario.getSenha());
			atualizar.setString(5, usuario.getRg());
			atualizar.setString(6, usuario.getArea());
			atualizar.setString(7, usuario.getCargo());

			atualizar.executeUpdate();
			connection.commit();

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return usuario;
	}
}
