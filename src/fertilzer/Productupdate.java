package fertilzer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Productupdate
 */
@WebServlet("/Productupdate")
public class Productupdate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String submit = request.getParameter("submit")	;	
String  date  =		request.getParameter("Date");
String  name  =		request.getParameter("Name");
String  openingbal  =		request.getParameter("Opening_Balance");
int ob = Integer.parseInt(openingbal);
String   receipt =		request.getParameter("Receipt");
int re = Integer.parseInt(receipt);
String sale   =		request.getParameter("Sale");
int s = Integer.parseInt(sale);
String  invoiceno  =		request.getParameter("Invoice_Number");
int in = Integer.parseInt(invoiceno);
	if ("Submit".equals(submit))	{
		String idq = request.getParameter("id");
		int id = Integer.parseInt(idq);
		Product p = new Product();
		p.setPeriod(date);
		p.setName(name);
		p.setOpenbal(ob);
		p.setRecepits(re);
		p.setSale(s);
		p.setInvoice(in);
		p.setId(id);
		
	int updates = 	ProductDoo.update(p);
	//response.sendRedirect("productlist.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");  
	
	  
	rd.forward(request, response);
	}
	else {
		response.sendRedirect("productlist.jsp");
	}
	
	}}


