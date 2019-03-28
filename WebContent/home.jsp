<%@page import="com.sun.xml.internal.messaging.saaj.packaging.mime.util.QDecoderStream"%>
<%@page import="fertilzer.Companydoo"%>
<%@page import="fertilzer.Comp" %>
<%@page import="fertilzer.Product" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import = "java.util.List"   %>


    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jaipal" user="root" password="320mys19" />
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="">
<title>Insert title here</title>
</head>



<body>

<%
response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null){
	response.sendRedirect("error.jsp");
}
%>



<nav class="navbar navbar-inverse">
        <div class="container-fluid">

            <!-- Header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">Sugureshwara Fertilizers</a>
            </div>

            <!-- Items -->
            <div class="collapse navbar-collapse" id="topNavBar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="home.jsp">
                            <span class="glyphicon glyphicon-leaf" area-hidden="true"></span>&nbsp; Companies
                        </a>
                    </li>
                </ul>

                <form class="navbar-form navbar-left" role="search" method="get" action="#">
                    <div class="form-group">
                        <input type="text" class="form-control" name="q" value="">
                    </div>
                    <button type="submit" class="btn btn-default">Search</button>
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <li class="">
                        
                        <a href="addf.jsp">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Add Company
                        </a>
                        
                    </li>

                    <li class="">
                        <a href="signout.jsp">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>&nbsp; Logout
                        </a>
                    </li>

                </ul>
            </div>

        </div>
    </nav>
    
<div style="background-color:lightblue">
            <table class="table table-bordered">
                <thead>
                    <tr><th>Company Name</th>
                    <th>Amount_To_Pay</th>
                    
                    <th>Actions</th>
                </tr></thead>
                
                    <tbody> <sql:query var="users" dataSource="${dataSource}">
select * from `jaipal`.`addcompny`;
</sql:query>

         <c:forEach var="row" items="${users.rows}" >     <tr>
               
         
         
              
         
         
                         
                         
    
    <c:set var="jid"  scope="session" value="${row.id}" />
      
                        <td><c:out value="${row.addcomp}"></c:out></td>
                        <td><c:out  value="${row.money}"></c:out></td>
                       
                   
                        
                 
                   <td>
                       <!-- details -->
                          <form action="productlist.jsp?username=<c:out value="${row.id}"/>" method="get" style="display:inline">
                               <input type="hidden" name="csrfmiddlewaretoken" value="5gpQ0ClY6ZDzj6lFY76ogVSEYevKnW3XVA48atFbD0Asdkm9IZIe2I2DHWhZEr9z">
                                <input type="hidden" name="id" value="${row.id}"> 
                                <input type="hidden" name ="name" value="${row.addcomp }">
                                <button type="submit" class="btn btn-default btn-sm">ProductList</button>
                            </form>
                     <!-- update -->
                     <form action="addupdate.jsp?userId=<c:out value="${row.id}"/>" method="get" style="display:inline" onsubmit="return confirm('Sure you want to update');">
                            
                               <input type="hidden" name='id' value="${row.id}">  
                                <button type="submit" class="btn btn-default btn-sm">Update</button>
                            </form>
                         <!-- delete -->
                         <form action="Adddelete" method="post" style="display:inline;" onsubmit="return confirm('Are you sure to delete');">
                                <input type="hidden" name="csrfmiddlewaretoken" value="5gpQ0ClY6ZDzj6lFY76ogVSEYevKnW3XVA48atFbD0Asdkm9IZIe2I2DHWhZEr9z">
                                 <input type="hidden" name="id" value="${row.id}"> 
                                <button type="submit" class="btn btn-default btn-sm">
                                    <span class="glyphicon glyphicon-trash"></span>
                                </button>
                            </form>
                         </td>       
                            </tr>
                            </c:forEach>
            </tbody></table>
            
            
            </div>
        
        
</body>
</html>