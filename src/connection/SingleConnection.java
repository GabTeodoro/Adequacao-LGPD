package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String url = "jdbc:mysql://localhost:3306/site_lgpd?autoReconnect=true";
	private static String user = "root";
	private static String password = "root";
	private static Connection connection = null;

	static {
		conectar();
	}

	public SingleConnection() {
		conectar();
	}

	private static void conectar() {
		try {
			if (connection == null) {
				Class.forName("com.mysql.jc.jdbc.Driver");
				connection = DriverManager.getConnection(url, user, password);
				connection.setAutoCommit(false);
				System.out.println("Conectado com sucesso ao database!");
			}

		} catch (Exception e) {

			e.printStackTrace();
			throw new RuntimeException("Erro ao tentar conectar ao database");
		}
	}

	public static Connection getConnection() {
		return connection;
	}

}
