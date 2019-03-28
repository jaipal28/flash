package fertilzer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class Companydoo {
	
	public static Connection getconnection(){
	
	Connection con = null;
	String url = "jdbc:mysql://localhost:3306/jaipal";
	String user = "root";
	String password = "320mys19";
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
	
}
	public static int update (Comp e){
		int updates = 0;
		  String sql = "update `jaipal`.`addcompny` set addcomp=?, money=? where id=?";
		  
		
		try {
			Connection cn = Companydoo.getconnection();
			PreparedStatement ps =cn.prepareStatement(sql);
			ps.setString(1, e.getName());
			ps.setString(2, e.getMoney() );
		//	ps.setString(2, e.getMoney());
			ps.setInt(3,e.getId());
	updates = 	ps.executeUpdate();
			cn.close();
		} catch (SQLException q) {
			// TODO Auto-generated catch block
			q.printStackTrace();
		} 
		return updates;
		
		
	}
	 public static Comp getEmployeeById(int id){  
	        Comp e=new Comp();  
	          
	        try{  
	            Connection con=Companydoo.getconnection();  
	            PreparedStatement ps=con.prepareStatement("select * from `jaipal`.`addcompny` where id=?");  
	            ps.setInt(1,id);  
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	              e.setId(rs.getInt(3));
	              e.setName(rs.getString("addcomp"));
	              e.setMoney(rs.getString("money"));
	            }  
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return e;  
	    }  
	
	  public static  int delete(int id){  
	        int status=0;  
	        try{  
	            Connection con=Companydoo.getconnection();  
	            PreparedStatement ps=con.prepareStatement("delete from `jaipal`.`addcompny` where id=?");  
	            ps.setInt(1, id);
	            status=ps.executeUpdate();
	              
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	  }
	
	  
}