package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String url = "";
	private static String user = "";
	private static String password = "";
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
				Class.forName("");
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
