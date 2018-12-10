package fertilzer;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Logindoo {
	
	
	
	String sq = 	"select * from `jaipal`.`login` where username =? && pass=?";
	String url = "jdbc:mysql://localhost:3306/jaipal";
	String users = "root";
	String password =  "320mys19";
		public boolean  checkuser(String user,String pass){
		boolean status = false;
			try {
		Class.forName("com.mysql.jdbc.Driver");
				Connection cn = DriverManager.getConnection(url,users,password);
				PreparedStatement ps = cn.prepareStatement(sq);
				ps.setString(1,user);
				ps.setString(2,pass);
				ResultSet rs = ps.executeQuery();
				
				
			status = rs.next();
					
			
					
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return status;
}
}