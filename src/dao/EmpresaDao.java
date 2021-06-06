package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnection;
import model.Empresa;

public class EmpresaDao {

	private Connection connection;

	public EmpresaDao() {
		connection = SingleConnection.getConnection();
	}

	public void cadastrarEmpresa(Empresa empresa) {

		try {

			String sql = "INSERT INTO empresa (nome, cnpj, email_usuario) VALUES (?,?,?)";
			PreparedStatement inserir = connection.prepareStatement(sql);

			inserir.setString(1, empresa.getNome());
			inserir.setString(2, empresa.getCnpj());
			inserir.setString(3, empresa.getEmailUsuario());
			inserir.execute();
			connection.commit();

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public List<Empresa> listarEmpresa(String emailUsuario) {

		List<Empresa> empresas = new ArrayList<Empresa>();

		try {

			String sql = "SELECT * FROM empresa WHERE email_usuario = '" + emailUsuario + "' ORDER BY id ASC";
			PreparedStatement listar = connection.prepareStatement(sql);
			ResultSet resultSet = listar.executeQuery();

			while (resultSet.next()) {

				Empresa empresa = new Empresa();
				empresa.setId(resultSet.getLong("id"));
				empresa.setNome(resultSet.getString("nome"));
				empresa.setCnpj(resultSet.getString("cnpj"));
				empresa.setEmailUsuario(resultSet.getString("email_usuario"));
				empresa.setEstado(resultSet.getString("estado"));
				empresa.setNota(resultSet.getDouble("nota"));
				empresas.add(empresa);

			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return empresas;

	}
	
	public Empresa buscarEmpresa(String id) {
		
		try {
			
			String sql = "SELECT * FROM empresa WHERE id = '" + id + "'";
			PreparedStatement buscar = connection.prepareStatement(sql);
			ResultSet resultadoBusca = buscar.executeQuery();
			
			if(resultadoBusca.next()) {
				
				Empresa empresa = new Empresa();
				empresa.setId(resultadoBusca.getLong("id"));
				empresa.setNome(resultadoBusca.getString("nome"));
				empresa.setCnpj(resultadoBusca.getString("cnpj"));
				empresa.setEmailUsuario(resultadoBusca.getString("email_usuario"));
				empresa.setEstado(resultadoBusca.getString("estado"));
				empresa.setNota(resultadoBusca.getDouble("nota"));
				
				return empresa;
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return null;
	}

	public void deletarEmpresa(String id) {

		try {

			String sql = "DELETE FROM empresa WHERE id = '" + id + "'";
			PreparedStatement deletar = connection.prepareStatement(sql);
			deletar.execute();
			connection.commit();

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
	
	public Empresa editarEmpresa(Empresa empresa) {
		
		try {
			
			String sql = "UPDATE empresa set nome = ?, cnpj = ?, email_usuario = ? WHERE id = '"
					+ empresa.getId() + "'";
			PreparedStatement atualizar = connection.prepareStatement(sql);
			
			atualizar.setString(1, empresa.getNome());
			atualizar.setString(2, empresa.getCnpj());
			atualizar.setString(3, empresa.getEmailUsuario());
			atualizar.execute();
			connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return empresa;
	}
	
public Empresa editarStatusEmpresa(Empresa empresa) {
		
		try {
			
			String sql = "UPDATE empresa set estado = ?, nota = ?, WHERE id = '"
					+ empresa.getId() + "'";
			PreparedStatement atualizar = connection.prepareStatement(sql);
			
			atualizar.setString(1, empresa.getEstado());
			atualizar.setDouble(2, empresa.getNota());
			atualizar.execute();
			connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return empresa;
	}

}
