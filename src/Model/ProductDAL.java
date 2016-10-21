package Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Object.Product;

public class ProductDAL extends GeneralDAL{

	public ProductDAL() {
		super("jdbc:sqlserver://localhost","test","sa","1");
	}
	
	public ArrayList<Product> getProductByType(String productTypeID){
		
		String SQLCommand = "SELECT * FROM Product ";
		SQLCommand += "JOIN ProductType "; 
		SQLCommand += "ON Product.productTypeID = ProductType.productTypeID ";
		SQLCommand += "WHERE Product.productTypeID = " + productTypeID;
		ResultSet rs = this.runQuery(SQLCommand);
		ArrayList<Product> list = new ArrayList<Product>();
		try {
			while(rs.next()){
				Product p = new Product();
				p.setProductID(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setProductPrice(rs.getInt(3));
				p.setProductTypeID(rs.getInt(4));
				p.setProductDescription(rs.getString(5));
				p.setProductImageUrl(rs.getString(6));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
