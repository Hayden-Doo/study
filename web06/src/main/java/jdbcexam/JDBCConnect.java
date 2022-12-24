package jdbcexam;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnect {

	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		// Class.forName("com.oracle.jdbc.OracleDriver");
		// Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://www.doohaedo.shop:3306/mysql?user=root&password=123456"
				); // connection String
		
		// -- 
		// jdbc:mysql://데이터베이스주소:포트/접근할 데이터베이스명?user=아이디(root)&password=비밀번호
		// jdbc:oracle:thin:// ex
		// jdbc:mssql:// ...
		
		return conn;
	}
}
