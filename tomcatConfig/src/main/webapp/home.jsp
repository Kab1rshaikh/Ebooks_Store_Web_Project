<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="main.com.DB.DBConnect" %>
<html>

<head>
<title>User:Home</title>


</head>

<body>
<h1>User:Home</h1>
<c:if test="${not empty userobj}">
  <h1>Name:${userobj.name}</h1>
  <h1>Email:${userobj.email}</h1>

</c:if>

</body>
</html>