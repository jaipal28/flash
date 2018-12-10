
<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="fertilzer.Companydoo" %>
    <%@ page import="fertilzer.Comp" %>
   <%@ page import="java.sql.*" %>
     <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
   
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String idq = request.getParameter("id");
int id = Integer.parseInt(idq);

Comp e=Companydoo.getEmployeeById(id);

/*try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jaipal");
		 PreparedStatement ps=con.prepareStatement("select * from `jaipal`.`addcompny` where id=?"); 
		ps.setString(1,id);
        ResultSet rs=ps.executeQuery();  
        
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*/

%>
       


  
                
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 com-md-7">
            <div class="panel panel-default">
                <div class="panel-body">
                
                
                 

                    <form class="form-horizontal" action="Addupdate" method="post" >
                  
                     
                        
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
                        
                     



<input type="hidden" name="id" value="<%=id%>"> 


        <label class="control-label col-sm-2"><label for="id_Name">Name:</label></label>
        <div class="col-sm-10"><input type="text" name="company" value="<%=e.getName()%>" maxlength="100" required="" id="id"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Amount_To_Pay">Amount To Pay:</label></label>
        <div class="col-sm-10"><input type="number" name="rupees" value="<%=e.getMoney()%>"
        ></div>
     
    </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success" name="sub" >Submit</button>
                                <button type="submit" class="btn btn-success" name="sub" formnovalidate="">Cancel</button>
                                    <!--<input type="submit" name="submit" value="Submit">-->
                                    <!--<input type="submit" name="cancel" value="Cancel" formnovalidate>-->
                                     
                            </div>
                        </div>
                          
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>