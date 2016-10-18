package Model;
import java.sql.*;


public class GeneralDAL {
	Connection con;
	public GeneralDAL(String server,String dbName, String username, String password){
		server += ";databaseName=" + dbName;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(server, username, password);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
	}	
	
	protected ResultSet runQuery(String sql){
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);	
			return result;
		} catch(SQLException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	protected int runCRUD(String sql){
		try {
			Statement stmt = con.createStatement();
			int rowsAffected = stmt.executeUpdate(sql);
			con.close();
			return rowsAffected;
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.close();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			return 0;
		}
	}
}

