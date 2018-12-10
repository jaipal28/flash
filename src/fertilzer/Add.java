package fertilzer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.Driver;

/**
 * Servlet implementation class Add
 */
@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final Integer String = null;
	String sq = " insert into `jaipal`.`addcompny`(addcomp,money)  values (?,?)";
	String url = "jdbc:mysql://localhost:3306/jaipal";
	String users = "root";
	String password =  "320mys19";
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String check = request.getParameter("can");
		String name = request.getParameter("Name");
		String amount = request.getParameter("Amount");
		if("submit".equals(check)){

			
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection cn = DriverManager.getConnection(url, users, password);
					PreparedStatement ps = cn.prepareStatement(sq);
					ps.setString(1, name);
					ps.setString(2, amount);
					ps.executeUpdate();
					response.sendRedirect("home.jsp");
				} catch(Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}}
				
		//if ("cancel".equals(check))
			
			
		
		else {
			response.sendRedirect("home.jsp");
			
		}
			
			
		
	

	}
		}
		
		
		
	
