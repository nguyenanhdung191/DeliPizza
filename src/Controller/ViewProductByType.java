package Controller;

import Model.*;
import Object.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewProductByType")
public class ViewProductByType extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ViewProductByType() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAL pd = new ProductDAL("jdbc:sqlserver://localhost","test","sa","1");
		String SQLCommand = "SELECT * FROM Product ";
		SQLCommand += "JOIN ProductType "; 
		SQLCommand += "ON Product.productTypeID = ProductType.productTypeID ";
		SQLCommand += "WHERE Product.productTypeID = 1";
		ResultSet rs = pd.getProductByType(SQLCommand);
		
		ArrayList<Product> list = new ArrayList<Product>();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		try {
			while(rs.next()){
				Product p = new Product();
				p.setProductID(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setProductPrice(rs.getInt(3));
				p.setProductType(rs.getString(7));
				p.setProductDescription(rs.getString(5));
				p.setProductImageUrl(rs.getString(6));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
