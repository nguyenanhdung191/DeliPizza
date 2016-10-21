package Controller;

import Model.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewProductByType")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAL pd = new ProductDAL();
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/viewProductByType.jsp");
		request.setAttribute("products", pd.getProductByType(request.getParameter("productTypeID")));
		rd.forward(request, response);
	}
	
}
