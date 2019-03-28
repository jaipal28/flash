<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="javax.servlet.http.HttpSession" %>
    <%@ page import ="fertilzer.Product" %>
    <%@ page import ="fertilzer.ProductDoo" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import = "java.util.List"   %>
    
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jaipal" user="root" password="320mys19" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="home.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	 $("#myInput").on("keyup", function() {
	   var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});

</script>
<title>Insert title here</title>

</head>
<body>
<% 
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
                        
    <a href="addproduct.jsp?ids=<%=  request.getParameter("id") %>">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Add Product
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
              
        
        
        
              <sql:query var="users" dataSource="${dataSource}">
select * from `jaipal`.`productse` where comp_id=?;
<sql:param value="${param.id}"/>
</sql:query>
<c:choose>
        <c:when test="${users.rowCount  == 0}">
         <%    String name = request.getParameter("name"); %>
            no company found <%=name %>
        </c:when>
        <c:otherwise>
            
       
<c:set var = "idq" value = "${request.getparameter('username')}" scope="request" />
<%String idqs = request.getParameter("id");
int idz = Integer.parseInt(idqs);
//pageContext.setAttribute("idz", id);
%>

    
    <input type="hidden" name="compid" value="<%=request.getParameter("id")%>"/>
    <input type="hidden" name="id" value="<%= request.getParameter("ids")%>"/>
        
        <div class="container-fluid" style="background-color:lightblue">
        <h3>Below are the list of products of company Fertilizers</h3>
        <p>Type something in the input field to search the table for name, product name, seller name:</p>
        <input class="form-control" id="myInput" type="text" placeholder="Search product names">
        <br>
        <table class="table table-bordered">
        
            <thead>
                <tr><th>Date</th>
                <th>Name</th>
                <th>Opening Balance</th>
                <th>Receipt</th>
                <th>Total</th>
                <th>Sale</th>
                <th>Closing Balance</th>
                <th>Invoice Number</th>
            </tr></thead>
            <tbody id="myTable">
           
        
            
            
              <c:forEach var="row" items="${users.rows}" >     
            <tr>
                <td>${row.period}</td>
                <td> ${row.name }</td>
                <td>${row.openbal }</td>
                <td>${row.recepits }</td>
                <td>${row.openbal+row.recepits }</td>
                <td>${row.sale }</td>
                <td>${row.sale+row.openbal+row.recepits }</td>
                <td>${row.invoice }</td>

                <td>
                    <!-- Update -->
                    <form action="productupdate.jsp" method="" style="display:inline" onsubmit="return confirm('Sure you want to update');">
                        <input type="hidden" name="csrfmiddlewaretoken" value="KNMwzxEL1NrbQpMUrpeaWpWGqLoQdx1gkB0ps93fgjGNsaBRHhPlIRenJVAZugre">
                        <input type="hidden" name="product_id" value="${row.id }">
                        <button type="submit" class="btn btn-default btn-sm">Update</button>
                    </form>

                    <!-- Delete -->
                    <form action="Productdelete" method="post" style="display:inline;" onsubmit="return confirm('Are you sure to delete');">
                        <input type="hidden" name="csrfmiddlewaretoken" value="KNMwzxEL1NrbQpMUrpeaWpWGqLoQdx1gkB0ps93fgjGNsaBRHhPlIRenJVAZugre">
                        <input type="hidden" name="product_id" value="${row.id}">
                        <button type="submit" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-trash"></span>
                        </button>
                    </form>
                </td>
            </tr>
            </c:forEach>
            </tbody>
           
         

        </table>
        
    </div>
         </c:otherwise>
    </c:choose> 
   
</body>
</html>