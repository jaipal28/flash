<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jaipal" user="root" password="320mys19" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:query var="users" dataSource="${dataSource}">
select * from `jaipal`.`addcompny`;
</sql:query>
<c:forEach var="row" items="${users.rows}">
<tr>
<td><c:out value="${row.addcomp}" /></td>
<td><c:out value="${row.money}" /></td>

</tr>
</c:forEach>
</body>
</html>