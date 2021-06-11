package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnection;
import model.Questao;

public class QuestaoDao {

	private Connection connection;

	public QuestaoDao() {
		connection = SingleConnection.getConnection();
	}

	public void cadastrarQuestao(Questao questao) {

		try {

			String sql = "INSERT INTO questao (pergunta, respostaCorreta, respostaErrada1, respostaErrada2, respostaErrada3) VALUES (?,?,?,?,?)";
			PreparedStatement inserir = connection.prepareStatement(sql);

			inserir.setString(1, questao.getPergunta());
			inserir.setString(2, questao.getRespostaCorreta());
			inserir.setString(3, questao.getRespostaErrada()[0]);
			inserir.setString(4, questao.getRespostaErrada()[1]);
			inserir.setString(5, questao.getRespostaErrada()[2]);

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

	public Questao buscarQuestao(String id) {

		try {

			String sql = "SELECT * FROM questao WHERE id = '" + id + "'";
			PreparedStatement buscar = connection.prepareStatement(sql);
			ResultSet resultado = buscar.executeQuery();

			if (resultado.next()) {

				Questao questao = new Questao();
				questao.setId(resultado.getLong("id"));
				questao.setPergunta(resultado.getString("pergunta"));
				questao.setRespostaCorreta(resultado.getString("respostaCorreta"));
				questao.setRespostaErrada1(resultado.getString("respostaErrada1"));
				questao.setRespostaErrada2(resultado.getString("respostaErrada2"));
				questao.setRespostaErrada3(resultado.getString("respostaErrada3"));
				return questao;

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

	public List<Questao> listarQuestoes() {

		List<Questao> questoes = new ArrayList<Questao>();

		try {

			String sql = "SELECT * FROM questao ORDER BY RAND() LIMIT 10";
			PreparedStatement listar = connection.prepareStatement(sql);
			ResultSet resultado = listar.executeQuery();

			while (resultado.next()) {

				Questao questao = new Questao();
				questao.setId(resultado.getLong("id"));
				questao.setPergunta(resultado.getString("pergunta"));
				questao.setRespostaCorreta(resultado.getString("respostaCorreta"));
				questao.setRespostaErrada1(resultado.getString("respostaErrada1"));
				questao.setRespostaErrada2(resultado.getString("respostaErrada2"));
				questao.setRespostaErrada3(resultado.getString("respostaErrada3"));
				questoes.add(questao);

			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return questoes;
	}
	
	public List<Questao> listarTodasQuestoes() {

		List<Questao> questoes = new ArrayList<Questao>();

		try {

			String sql = "SELECT * FROM questao";
			PreparedStatement listar = connection.prepareStatement(sql);
			ResultSet resultado = listar.executeQuery();

			while (resultado.next()) {

				Questao questao = new Questao();
				questao.setId(resultado.getLong("id"));
				questao.setPergunta(resultado.getString("pergunta"));
				questao.setRespostaCorreta(resultado.getString("respostaCorreta"));
				questao.setRespostaErrada1(resultado.getString("respostaErrada1"));
				questao.setRespostaErrada2(resultado.getString("respostaErrada2"));
				questao.setRespostaErrada3(resultado.getString("respostaErrada3"));
				questoes.add(questao);

			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		return questoes;
	}

	public void deletarQuestao(String id) {

		try {

			String sql = "DELETE FROM questao WHERE id = '" + id + "'";
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

	public Questao editarQuestao(Questao questao) {

		try {

			String sql = "UPDATE questao SET pergunta = ?, respostaCorreta = ?, respostaErrada1 = ?, respostaErrada2 = ?, respostaErrada3 = ? WHERE id = '"
					+ questao.getId() + "'";
			PreparedStatement atualizar = connection.prepareStatement(sql);
			
			atualizar.setString(1, questao.getPergunta());
			atualizar.setString(2, questao.getRespostaCorreta());
			atualizar.setString(3, questao.getRespostaErrada()[0]);
			atualizar.setString(4, questao.getRespostaErrada()[1]);
			atualizar.setString(5, questao.getRespostaErrada()[2]);
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

		return questao;
	}

}
