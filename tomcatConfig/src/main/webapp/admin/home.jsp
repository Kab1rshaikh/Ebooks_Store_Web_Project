<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<!DOCTYPE html>
<html>

<head>
<title>Admin Page</title>
<%@include file="allCSS.jsp"%>
<style>

a{
text-decoration:none;
color:black;
}

a:hover{
text-decoration:none;
color:black;
}

</style


</head>

<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center mt-3">Welcome Admin!</h3>

<div class="container">
    <div class="row p-5">

        <div class="col-md-3">
          <a href="add_books.jsp">
           <div class="card">
            <div class="card-body text-center">
            <i class="fa-solid fa-square-plus fa-3x text-success"></i><br>
            <h4 class="mt-2">Add Books</h4>
            ---------------
            </div>
         </div>
        </a>
        </div>


        <div class="col-md-3">
           <a href ="all_books.jsp">
            <div class="card">
                  <div class="card-body text-center">
                  <i class="fa-solid fa-book-open fa-3x text-danger"></i></br>
                  <h4 class="mt-2">All Books</h4>
                  ---------------
                  </div>
            </div>
           </a>
        </div>


    <div class="col-md-3">
      <a href ="orders.jsp">
        <div class="card">
            <div class="card-body text-center">
            <i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
            <h4 class="mt-2">Order</h4>
            ---------------
        </div>
      </div>
     </a>
    </div>

    <div class="col-md-3">
             <div class="card">
                <div class="card-body text-center">
                <i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
                <h4 class="mt-2">Logout</h4>
                ---------------
            </div>
        </div>
    </div>
















    </div>
</div>
<div style="margin-top: 23%">
<%@include file="footer.jsp"%>
</div>




</body>
</html>
