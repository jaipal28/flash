package fertilzer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

//import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
//import org.hibernate.query.NativeQuery;



//import hibernatepojo.testpojo;

public class ProductDoo {
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
	
	public static int save(Product ps){  
         
      // Comp e = new Comp();
        int i ;
        
        
        	
        	Configuration configuration = new Configuration().configure();
		 	 
		 	SessionFactory factory =  configuration.buildSessionFactory();
		 	Session session = factory.openSession();  
		 	 session.beginTransaction();
		 	 
		 	 
	i = (Integer)	  session.save(ps);
		  
		 
		 	 session.getTransaction().commit();
		 	 session.close();
           return i;
      
          
        
    }  
		public static int update (Product p){
			int updates = 0;
			  String sql = "update `jaipal`.`productse` set period=?, name=?, openbal=?, recepits=?, sale=?, invoice=? where id=?";
			  
			
			try {
				Connection cn = Companydoo.getconnection();
				PreparedStatement ps =cn.prepareStatement(sql);
				ps.setString(1, p.getPeriod());
				ps.setString(2, p.getName());
				ps.setInt(3, p.getOpenbal());
				ps.setInt(4, p.getRecepits());
				ps.setInt(5, p.getSale());
				ps.setInt(6, p.getInvoice());
				ps.setInt(7, p.getId());
			//	ps.setString(1, e.getName());
			//	ps.setString(2, e.getMoney());
				//ps.setInt(3, e.getId());
		updates =	ps.executeUpdate();
				cn.close();
			} catch (SQLException q) {
				// TODO Auto-generated catch block
				q.printStackTrace();
			} 
			return updates;
			
		}

		 
		  public static  int delete(int id){  
		        int status=0;  
		        try{  
		            Connection con=Companydoo.getconnection();  
		            PreparedStatement ps=con.prepareStatement("delete from `jaipal`.`productse` where id=?");  
		            ps.setInt(1, id);
		            status=ps.executeUpdate();
		              
		            con.close();  
		        }catch(Exception e){e.printStackTrace();}  
		          
		        return status;  
		  }
	String i =	  "SELECT `productse`.`invoice`, `productse`.`name`,`productse`.`openbal`,`productse`.`period`,`productse`.`recepits`,`productse`.`sale`,`productse`.`comp_id`\r\n" + 
	 		"FROM `jaipal`.`productse`;";
		 
	 		 public static Product getCompanyById(int id){  
	 	        Product  e = new Product();
	 	          
	 	        try{  
	 	            Connection con = Companydoo.getconnection();  
	 	            PreparedStatement ps=con.prepareStatement("select * from productse where id=?");  
	 	            ps.setInt(1,id);  
	 	            ResultSet rs=ps.executeQuery();  
	 	            if(rs.next()){  
	 	                e.setInvoice(rs.getInt(2));
	 	                e.setName(rs.getString(3));
	 	                e.setOpenbal(rs.getInt(4));
	 	                e.setPeriod(rs.getString(5));
	 	                e.setRecepits(rs.getInt(6));
	 	                e.setSale(rs.getInt(7));
	 	       
	 	           
	 	           
	 	            
	 	            }  
	 	            con.close(); 
	 	        }catch(Exception ex){ex.printStackTrace();}  
	 	          
	 	        return e;  
	 	    }  

	 		 
}

