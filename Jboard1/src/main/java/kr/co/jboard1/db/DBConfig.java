package kr.co.jboard1.db;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConfig {
	
	// �̱���
	private static DBConfig instance = new DBConfig();
	
	private DBConfig() {}
	
	public static DBConfig getInstance() {
		return instance;
	}
	// DB����
	private final String HOST = "jdbc:mysql://54.180.160.240:3306/kkh9372";
	//private final String HOST = "jdbc:mysql://3.36.92.141:8080/kkh9372";
	//private final String HOST = "jdbc:mysql://52.79.248.246:8080/kkh9372";
	private final String USER = "kkh9372";
	private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
		// 1�ܰ�
		Class.forName("com.mysql.jdbc.Driver");
		// 2�ܰ�
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}
