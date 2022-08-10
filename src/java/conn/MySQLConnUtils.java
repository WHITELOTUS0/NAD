package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {
	public static Connection getMySQLConnection()
	         throws ClassNotFoundException, SQLException {
		 // Note: Change the connection parameters accordingly.
	     String hostName = "localhost";
	     String dbName = "mufasa";
	     String userName = "root";
	     String password = "kato2000";
             
             String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
             Class.forName("com.mysql.jdbc.Driver");
	 
	     Connection conn = DriverManager.getConnection(connectionURL, userName,password);
	             
             
	     return conn;
	 }
	 
	 

}
