package fertilzer;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Addupdate")
public class Addupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//String cancel = request.getParameter("cancel");
	String submit = request.getParameter("sub");
	//String cancel = request.getParameter("cancel");
	
String name = request.getParameter("company");
String money = request.getParameter("rupees");

String idq = request.getParameter("id");
int id = Integer.parseInt(idq);
//   HttpSession sessions = request.getSession();
//   sessions.setAttribute("id", ids);

	PrintWriter pw = response.getWriter();
	//if ("Submit".equals(submit)){
		
		Comp e = new Comp();
		e.setName(name);
		e.setMoney(money);
		e.setId(id);
int updates =		 Companydoo.update(e);
		response.sendRedirect("home.jsp");
		
	}
//	else  {
	//	response.sendRedirect("home.jsp");
	//}

}
