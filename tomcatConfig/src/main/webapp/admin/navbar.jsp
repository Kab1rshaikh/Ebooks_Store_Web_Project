<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import="main.com.user.servlet.LoginServlet" %>
<div class="container-fluid p-3 bg-dark">
    <div class="row">
        <div class="col-md-3 text-warning">
            <h3><i class="fa-solid fa-book-open-reader"></i> Ebooks</h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-warning my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
       <div class="col-md-3">

       <c:if test="${not empty userobj}">
        <a href="login.jsp" class="btn btn-warning float-right ml-2">
        <i class="fa-solid fa-right-to-bracket"></i> ${ userobj.name}</a>
       </c:if>
       <c:if test="${empty userobj}">

           <a href="../login.jsp" class="btn btn-warning float-right ml-2"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
           <a href="../register.jsp" class="btn btn-warning float-right"><i class="fa-solid fa-user-plus"></i> Register</a>
       </c:if>
       </div>


    </div>


</div>





<nav class="navbar navbar-expand-lg navbar-light bg-custom">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp"><i class="fa-solid fa-house"></i> Home<span class="sr-only">(current)</span></a>
      </li>

    </form>
  </div>
</nav>
