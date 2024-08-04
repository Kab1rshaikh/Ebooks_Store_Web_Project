<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>

<html>
<head>
<title>Ebook:Index</title>
<%@include file="allComponent/allCSS.jsp"%>

<style type="text/css">

.back-img{
background: url("img/book7.jpg");
height: 45vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;
}

.crd-ho:hover{
background-color:#edebeb;

}





</style>

</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/navbar.jsp"%>

    <div class="container-fluid back-img mb-3">
        <h2 class="text-center text-white pt-4">Ebook Management System<h2>


    </div>



    <!-- start Recent book -->

    <div class="container">
        <h3 class="text-center">Recent Books</h3>
        <div class="row">
            <div class="col-md-3">
              <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                            class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Category:New</p>
                    <div class="row ">
                        <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                    </div>

                </div>
              </div>
            </div>

            <div class="col-md-3">
                          <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                        class="img-thumblin">
                                <p>Java Programming</p>
                                <p>Balguruswamy</p>
                                <p>Category:New</p>
                                <div class="row ">
                                    <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                </div>

                            </div>
                           </div>
            </div>



        <div class="col-md-3">
                      <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                    class="img-thumblin">
                            <p>Java Programming</p>
                            <p>Balguruswamy</p>
                            <p>Category:New</p>
                            <div class="row ">
                               <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                            </div>

                        </div>
                      </div>
                    </div>

        <div class="col-md-3">
                      <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                    class="img-thumblin">
                            <p>Java Programming</p>
                            <p>Balguruswamy</p>
                            <p>Category:New</p>
                            <div class="row ">
                                <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                            </div>

                        </div>
                      </div>
                    </div>


        </div>

        <div class="text-center mt-2">
            <a href="" class="btn btn-danger btn-sm ">View All</a>
        </div>

    </div>

    <!-- End Recent Book -->

    <hr>

    <!-- start New book -->

        <div class="container">
            <h3 class="text-center">New Books</h3>
            <div class="row">
                <div class="col-md-3">
                  <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                class="img-thumblin">
                        <p>Java Programming</p>
                        <p>Balguruswamy</p>
                        <p>Category:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                        </div>

                    </div>
                  </div>
                </div>

                <div class="col-md-3">
                              <div class="card crd-ho">
                                <div class="card-body text-center">
                                    <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                            class="img-thumblin">
                                    <p>Java Programming</p>
                                    <p>Balguruswamy</p>
                                    <p>Category:New</p>
                                    <div class="row ">
                                        <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                        <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                    </div>

                                </div>
                               </div>
                </div>



            <div class="col-md-3">
                          <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                        class="img-thumblin">
                                <p>Java Programming</p>
                                <p>Balguruswamy</p>
                                <p>Category:New</p>
                                <div class="row ">
                                    <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                </div>

                            </div>
                          </div>
                        </div>

            <div class="col-md-3">
                          <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                        class="img-thumblin">
                                <p>Java Programming</p>
                                <p>Balguruswamy</p>
                                <p>Category:New</p>
                                <div class="row ">
                                    <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-arrow-down"></i>Add-Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                </div>

                            </div>
                          </div>
                        </div>


            </div>

            <div class="text-center mt-2">
                <a href="" class="btn btn-danger btn-sm ">View All</a>
            </div>

        </div>

        <!-- End New Book -->
        <hr>

        <!-- start Old book -->

            <div class="container">
                <h3 class="text-center">Old Books</h3>
                <div class="row">
                    <div class="col-md-3">
                      <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                    class="img-thumblin">
                            <p>Java Programming</p>
                            <p>Balguruswamy</p>
                            <p>Category:New</p>
                            <div class="row ">
                                <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                            </div>

                        </div>
                      </div>
                    </div>

                    <div class="col-md-3">
                                  <div class="card crd-ho">
                                    <div class="card-body text-center">
                                        <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                                class="img-thumblin">
                                        <p>Java Programming</p>
                                        <p>Balguruswamy</p>
                                        <p>Category:New</p>
                                        <div class="row ">
                                            <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                            <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                        </div>

                                    </div>
                                   </div>
                    </div>



                <div class="col-md-3">
                              <div class="card crd-ho">
                                <div class="card-body text-center">
                                    <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                            class="img-thumblin">
                                    <p>Java Programming</p>
                                    <p>Balguruswamy</p>
                                    <p>Category:New</p>
                                    <div class="row ">
                                        <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                        <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                    </div>

                                </div>
                              </div>
                            </div>

                <div class="col-md-3">
                              <div class="card crd-ho">
                                <div class="card-body text-center">
                                    <img alt="" src="book/java.jpg" style="width: 200px; height: 280px"
                                            class="img-thumblin">
                                    <p>Java Programming</p>
                                    <p>Balguruswamy</p>
                                    <p>Category:New</p>
                                    <div class="row ">

                                        <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                        <a href="" class="btn btn-primary btn-sm ml-1">299</a>
                                    </div>

                                </div>
                              </div>
                            </div>


                </div>

                <div class="text-center mt-2">
                    <a href="" class="btn btn-danger btn-sm ">View All</a>
                </div>

            </div>

            <!-- End old Book -->


<%@include file="allComponent/footer.jsp"%>
</body>
</html>
