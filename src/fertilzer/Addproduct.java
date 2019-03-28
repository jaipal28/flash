package fertilzer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;


@WebServlet("/Addproduct")
public class Addproduct extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  ids = request.getParameter("id");
		int id = Integer.valueOf(ids);
		String can = request.getParameter("cancel");
		if ("Cancel".equals(can)) {
		
			
			RequestDispatcher rd = request.getRequestDispatcher("productlist.jsp");  
			
			  
			rd.forward(request, response);
		}
		else {
	String dateq =(String) request.getParameter("Date");

		String name = request.getParameter("Name");
	
		String oba = request.getParameter("Opening_Balance");
		int ob = Integer.parseInt(oba);
		String reca = request.getParameter("Receipt");
		int rec = Integer.parseInt(reca);
		String sals = request.getParameter("Sale");
		int sal = Integer.parseInt(sals);
	String in  = request.getParameter( "Invoice_Number");
		int ine =        Integer.parseInt(in);
		
		Comp e = new Comp();
		Product ps = new Product();
		e.setId(id);
		
	      
	      
			ps.setComp(e);
		ps.setPeriod(dateq);
		ps.setName(name);
		ps.setOpenbal(ob);
		ps.setRecepits(rec);
		ps.setSale(sal);
		ps.setInvoice(ine);
        
		
	int i = 	 ProductDoo.save(ps);
		
	RequestDispatcher rd = request.getRequestDispatcher("productlist.jsp");  
	
	  
	rd.forward(request, response);}
	}
			
		}
		
		
		
	


