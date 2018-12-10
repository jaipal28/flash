package fertilzer;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Addupdate")
public class Addupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//String cancel = request.getParameter("cancel");
	//String submit = request.getParameter("sub");
	//String cancel = request.getParameter("cancel");
	
String name = request.getParameter("company");
String money = request.getParameter("rupees");

String idq = request.getParameter("id");
int id = Integer.parseInt(idq);


	PrintWriter pw = response.getWriter();
	//if ("Submit".equals(submit)){
		
		Comp e = new Comp();
		e.setName(name);
		e.setMoney(money);
		e.setId(id);
		 Companydoo.update(e);
		response.sendRedirect("home.jsp");
		
	//}
//	else  {
		//response.sendRedirect("home.jsp");
	//}

}}
