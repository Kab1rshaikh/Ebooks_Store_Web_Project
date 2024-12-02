<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import="com.DAO.BookDAOImpl, com.entity.BookDtls, com.DB.DBConnect, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin:Edit Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f0f2f2">
<%@include file="navbar.jsp"%>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                <h4 class="text-center mb-3">Edit Books</h4>
                <c:if test="${not empty succMsg}">
                <p class="text-center text-success">${succMsg}</p>
                <c:remove var="succMsg" scope="session"/>
                </c:if>

                <c:if test="${not empty failMsg}">
                <p class="text-center text-danger">${failMsg}</p>
                <c:remove var="failMsg" scope="session"/>
                </c:if>

                <%
                int id=Integer.parseInt(request.getParameter("id"));
                BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                BookDtls b = dao.getBookById(id);



                %>


                <form action="../editbooks" method="post">
                                <input type="hidden" name="id" value="<%=b.getBookId()%>">
                               <div class="form-group">
                                 <label for="">Book Name</label>
                                 <input type="text" class="form-control" id="exampleInputEmail1"
                                 aria-describedby="emailHelp"  name="bname" value="<%=b.getBookname()%>">

                                 </div>
                                  <div class="form-group">
                                    <label for="">Author Name</label>
                                    <input type="text" class="form-control" id=""
                                    aria-describedby="emailHelp"  name="author"value="<%=b.getAuthor()%>" >

                                  </div>
                                   <div class="form-group">
                                   <label for="exampleInputEmail1">Price</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                    name="price" value="<%=b.getPrice()%>">
                                    </div>


                                  <div class="form-group">
                                    <label for="inputState">Book Status</label>
                                     <select class="form-control" id="inputState" required="required" name="bstatus">
                                     <% if("Active".equals(b.getStatus())){ %>
                                     <option value="Active">Active</option>
                                     <option value="Inactive">Inactive</option>
                                     <%
                                     }else{%>
                                     <option value="Inactive">Inactive</option>
                                     <option value="Active">Active</option>

                                     <% } %>
                                     </select>
                                  </div>
                                  <div class="text-center">
                                  <button type="submit" class="btn btn-dark mt-3">Update</button><br>

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