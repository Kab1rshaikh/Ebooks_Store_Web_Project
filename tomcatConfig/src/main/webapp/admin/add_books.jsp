<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="main.com.DAO.BookDAOImpl, main.com.entity.BookDtls, main.com.DB.DBConnect, java.util.List" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin:Add Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f0f2f2">
<%@include file="navbar.jsp"%>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                <h4 class="text-center mb-3">Add Books</h4>
                <c:if test="${not empty succMsg}">
                <p class="text-center text-success">${succMsg}</p>
                <c:remove var="succMsg" scope="session"/>
                </c:if>

                <c:if test="${not empty failMsg}">
                <p class="text-center text-danger">${failMsg}</p>
                <c:remove var="failMsg" scope="session"/>
                </c:if>
                <form action="../add_books" method="post" enctype="multipart/form-data">
                                 <div class="form-group">
                                 <label for="">Book Name</label>
                                 <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="bname">

                                 </div>
                                  <div class="form-group">
                                    <label for="">Author Name</label>
                                    <input type="text" class="form-control" id="" aria-describedby="emailHelp" required="required" name="author" >

                                  </div>
                                   <div class="form-group">
                                   <label for="exampleInputEmail1">Price</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="price">
                                    </div>

                                  <div class="form-group">
                                    <label for="inputState">Book Categories</label>
                                    <select class="form-control" id="inputState" required="required" name="btype">
                                     <option selected>--select--</option>
                                     <option value="New">New Book</option>
                                    </select>
                                  </div>

                                  <div class="form-group">
                                    <label for="inputState">Book Status</label>
                                     <select class="form-control" id="inputState" required="required" name="bstatus">
                                     <option selected>--select--</option>
                                     <option value="Active">Active</option>
                                     <option value="Inactive">Inactive</option>
                                     </select>
                                  </div>

                                  <div class="form-group">
                                   <label for="exampleInputFile1">Upload photo</label>
                                   <input type="file" class="form-control" id="exampleInputFile1" aria-describedby="emailHelp" required="required" name="bimg">
                                  </div>

                                  <div class="text-center">
                                  <button type="submit" class="btn btn-dark mt-3">Add</button><br>

                                  </div>
                                </form>

                </div>
            </div>
        </div>
    </div>
</div>
<div style="margin-top: 15%">
<%@include file="footer.jsp"%>
</div>


</body>
</html>