package Model;

import java.sql.ResultSet;

public class ProductDAL extends GeneralDAL{

	public ProductDAL(String server, String dbName, String username, String password) {
		super(server, dbName, username, password);
	}
	
	public ResultSet getProductByType(String sql){
		return runQuery(sql);
	}
	
}
