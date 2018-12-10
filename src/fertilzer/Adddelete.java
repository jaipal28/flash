package fertilzer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adddelete
 */
@WebServlet("/Adddelete")
public class Adddelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*String sq = 	"delete  from `jaipal`.`addcompny` where id =? " ;
	String url = "jdbc:mysql://localhost:3306/jaipal";
	String users = "root";
	String password =  "320mys19";*/
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String idu =	request.getParameter("id");
	int id = Integer.parseInt(idu);
		/*try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection(url,users,password);
			PreparedStatement ps = cn.prepareStatement(sq);
			ps.setString(1,id);
			
			 ps.executeUpdate();
			response.sendRedirect("home.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	Companydoo.delete(id);
	 
     
     response.sendRedirect("home.jsp");  
 }  
	}


