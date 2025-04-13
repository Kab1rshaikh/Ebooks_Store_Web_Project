<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<html>
<head>
<title>Ebook:Register</title>
<%@include file="allComponent/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

<%@include file="allComponent/navbar.jsp"%>

<div class="container p-5">
    <div class="row ">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                <h4 class="text-center mb-3">Create Account</h4>
                    <c:if test="${not empty succMsg}">
                    <p class="text-center text-success">${succMsg}</p>
                    <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty failMsg}">
                    <p class="text-center text-danger">${failMsg}</p>
                    <c:remove var="failMsg" scope="session"/>
                    </c:if>



                <form action="register" method="post">
                 <div class="form-group">
                 <label for="">Enter Full Name</label>
                 <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">

                 </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email" >

                  </div>
                   <div class="form-group">
                   <label for="exampleInputEmail1">Phone No</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phno">
                    </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                  </div>
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                    <label class="form-check-label" for="exampleCheck1">Agree Terms & Condition</label>
                  </div>
                  <div class="text-center">
                  <button type="submit" class="btn btn-dark mt-3">Submit</button><br>

                  </div>
                </form>

                </div>

            </div>

        </div>

    </div>
</div>


<%@include file="allComponent/footer.jsp"%>
</body>
</html>