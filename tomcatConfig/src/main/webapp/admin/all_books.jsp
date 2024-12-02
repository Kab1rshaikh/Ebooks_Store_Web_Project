<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import="com.DAO.BookDAOImpl, com.entity.BookDtls, com.DB.DBConnect, java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin: Add Books</title>
    <%@ include file="allCSS.jsp" %>
</head>
<body>
<%@ include file="navbar.jsp" %>
<h3 class="text-center mt-3">Add Books</h3>
<c:if test="${not empty succMsg}">
  <p class="text-center text-success">${succMsg}</p>
  <c:remove var="succMsg" scope="session"/>
</c:if>

  <c:if test="${not empty failMsg}">
     <p class="text-center text-danger">${failMsg}</p>
    <c:remove var="failMsg" scope="session"/>
  </c:if>
<table class="table table-striped">
  <thead class="bg-dark">
    <tr class="text-white">
      <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list = dao.getAllBooks();
  if (list != null && !list.isEmpty()) {
      for (BookDtls b : list) {
  %>
  <tr>
          <td><%= b.getBookId() %></td>
          <td><img src="../book/<%= b.getPhoto() %>" style="width:50px; height: 50px;" alt="Book Image"></td>
          <td><%= b.getBookname() %></td>
          <td><%= b.getAuthor() %></td>
          <td><%= b.getPrice() %></td>
          <td><%= b.getBookCategory() %></td>
          <td><%= b.getStatus() %></td>
          <td>
              <a href="edit_books.jsp?id=<%= b.getBookId() %>" class="btn btn-sm btn-primary"><i class="fa-regular fa-pen-to-square"></i> Edit</a>
              <a href="../delete?id=<%= b.getBookId() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
          </td>
    </tr>
  <%
      }
  } else { %>
    <tr><td colspan="8" class="text-center">No books found.</td></tr>
  <% } %>
  </tbody>
</table>
<div style="margin-top: 27%">
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
