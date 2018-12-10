<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="home.css">
<title>Insert title here</title>
</head>
<body>

  <nav class="navbar navbar-inverse">
        <div class="container-fluid">

            <!-- Header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/fertilizers/">Sugureshwara Fertilizers</a>
            </div>

            <!-- Items -->
            <div class="collapse navbar-collapse" id="topNavBar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/fertilizers/">
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
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Add product
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
    
</body>
</html>