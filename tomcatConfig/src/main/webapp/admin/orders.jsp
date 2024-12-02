
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin:All Orders</title>
    <%@include file="allCSS.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center mt-3">All Orders</h3>
<table class="table table-striped mt-3">
  <thead class="bg-dark">
    <tr class="text-white">
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Ph No</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>old</td>
      <td>Active</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>


    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>old</td>
      <td>Active</td>
      <td>Active</td>
      <td>Mark</td>
      <td>Otto</td>


    </tr>
    <tr>
      <th scope="row">3</th>
    <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
          <td>old</td>
          <td>Active</td>
         <td>Otto</td>
        <td>@mdo</td>
        <td>old</td>
    </tr>
  </tbody>
</table>
<div style="margin-top: 27%">
<%@include file="footer.jsp"%>
</div>


</body>
</html>