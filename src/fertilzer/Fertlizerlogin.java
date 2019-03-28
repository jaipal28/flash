package fertilzer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Fertlizerlogin
 */
@WebServlet("/Fertlizerlogin")
public class Fertlizerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usersq =	request.getParameter("user");
		String passs =	request.getParameter("pass");

			
					Logindoo li = new Logindoo ();
			
				response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
		
			if(li.checkuser(usersq, passs)){
				HttpSession session = request.getSession();
				session.setAttribute("username", usersq);
				
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("errormessage", "incorrect username or password  ");
			//	pw.print("invalid username");
				
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				
				rd.forward(request, response);
			}
			
	}

}
