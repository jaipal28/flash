<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.Date" %> 
     <%@ page import ="java.text.SimpleDateFormat" %> 
     
     <%@ page import = "javax.servlet.http.HttpSession" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("username")==null){
	response.sendRedirect("error.jsp");
}


Date date = new Date(); 
SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
String format = simple.format(date);



//Comp e = new Comp();
%>


<nav class="navbar navbar-inverse">
        <div class="container-fluid">

            <!-- Header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar" aria-expanded="true">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/fertilizers/">Sugureshwara Fertilizers</a>
            </div>

            <!-- Items -->
            <div class="navbar-collapse collapse in" id="topNavBar" aria-expanded="true" style="">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/fertilizers/">
                            <span class="glyphicon glyphicon-leaf" area-hidden="true"></span>&nbsp; Companies
                        </a>
                    </li>
                </ul>

                <form class="navbar-form navbar-left" role="search" method="post" action="">
                    <div class="form-group">
                        <input type="text" class="form-control" name="q" value="">
                    </div>
                    <button type="submit" class="btn btn-default">Search</button>
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <li class="">
                        
                        <a href="/fertilizers/Company/add/">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Add Company
                        </a>
                        
                    </li>

                    <li class="">
                        <a href="/logout/">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>&nbsp; Logout
                        </a>
                    </li>

                </ul>
            </div>

        </div>
    </nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 com-md-7">
            <div class="panel panel-default">
                <div class="panel-body">
<form class="form-horizontal" action="Addproduct?id=<%=request.getParameter("ids") %>" method="post" >
                        
                     
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Date">Date:</label></label>
        <div class="col-sm-10"><input type="text" name="Date" value="<%=format %>" required="" id="id_Date"><input type="hidden" name="initial-Date" value="2018-12-14" id="initial-id_Date"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Name">Name:</label></label>
        <div class="col-sm-10"><input type="text" name="Name" maxlength="100" required="" id="id_Name"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Opening_Balance">Opening Balance:</label></label>
        <div class="col-sm-10"><input type="number" name="Opening_Balance" required="" id="id_Opening_Balance"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Receipt">Receipt:</label></label>
        <div class="col-sm-10"><input type="number" name="Receipt" required="" id="id_Receipt"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Sale">Sale:</label></label>
        <div class="col-sm-10"><input type="number" name="Sale" required="" id="id_Sale"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Invoice_Number">Invoice Number:</label></label>
        <div class="col-sm-10"><input type="text" name="Invoice_Number" maxlength="13" required="" id="id_Invoice_Number"></div>
    </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success" name ="submit">Submit</button>
                                <button type="submit" class="btn btn-success" name="cancel" value="Cancel" formnovalidate="">Cancel</button>
                            </div>
                        </div>
                    </form>
                                           </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

 
  
   



</body>
</html>