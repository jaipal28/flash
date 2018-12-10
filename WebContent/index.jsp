<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  
  <link rel="stylesheet" type="text/css" href="index.css">
<title>Insert title here</title>
</head>
<body>

<div class="Login-page">
    <h2 align="center">Login To FertilizerShop</h2>
  <div class="form">
    <form action="Fertlizerlogin" method="post">
        
       <table class="table" width="272px">
                    <tr>
                        <td><input id="id_username" name="user"
                                   type="text" class="form-control" placeholder="Username"></td>
                    </tr>
                    <tr>
                        <td><input id="id_password" name="pass"
                                   type="password" class="form-control" placeholder="Password"></td>
                    </tr>
                </table>
                
      <button type="submit">Login</button>
    </form>
  </div>
</div>

</body>
</html>