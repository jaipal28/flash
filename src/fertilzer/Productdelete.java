package fertilzer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Productdelete
 */
@WebServlet("/Productdelete")
public class Productdelete extends HttpServlet {
	
 
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id =	Integer.parseInt(request.getParameter("product_id"));
		
	 	ProductDoo.delete(id);
	 
	
//	RequestDispatcher rd = request.getRequestDispatcher("productlist.jsp");  
	
	  
	//rd.forward(request, response);
		response.sendRedirect("productlist.jsp");
	
	
	}

	

}
