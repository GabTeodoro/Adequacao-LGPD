package dao;

import java.sql.Connection;

import connection.SingleConnection;

public class TesteDao {
	
	private Connection connection;
	
	public TesteDao() {
		connection = SingleConnection.getConnection();
	}
	

}
