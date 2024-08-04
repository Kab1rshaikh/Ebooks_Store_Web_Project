<html>
<head>
<title>Ebook:Login</title>
<%@include file="allComponent/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

<%@include file="allComponent/navbar.jsp"%>

<div class="container p-5">
    <div class="row ">
        <div class="col-md-6 offset-md-3 mb-5">
            <div class="card">
                <div class="card-body">
                <h4 class="text-center mb-3">Login</h4>
                <c:if test="${not empty succMsg}">
                                    <p class="text-center text-success">${succMsg}</p>
                                    <c:remove var="succMsg" scope="session"/>
                                    </c:if>

                                    <c:if test="${not empty failMsg}">
                                    <p class="text-center text-danger">${failMsg}</p>
                                    <c:remove var="failMsg" scope="session"/>
                                    </c:if>
                <form action="login" method="post">

                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email" >

                  </div>


                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password" >
                  </div>

                  <div class="text-center">
                  <button type="submit" class="btn btn-dark mt-3 mb-2">Submit</button><br>
                  <a href="register.jsp">Create Account</a>
                  </div>
                </form>

                </div>

            </div>

        </div>

    </div>
</div>



</body>
</html>