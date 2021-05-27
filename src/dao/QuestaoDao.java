package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connection.SingleConnection;
import model.Questao;

public class QuestaoDao {
	
	private Connection connection;
	
	public QuestaoDao() {
		connection = SingleConnection.getConnection();
	}
	
	public void cadastrarQuestao(Questao questao) {
		
		try {
			
			String sql = "INSERT INTO questao (pergunta, respostaCorreta, respostaErrada1, respostaErrada2, respostaErrada3) VALUES (?,?,?,?)";
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

}
