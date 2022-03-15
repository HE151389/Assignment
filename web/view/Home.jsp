<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KJ COMPUTER ACCESSORY</title>
        <!-- google font -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap"
            rel="stylesheet">
        <!-- boxicons -->  
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- app css -->
        <link rel="stylesheet" href="css/grid.css">
        <link href="css/app.css" rel="stylesheet" type="text/css"/>
        <script src="js/app.js" type="text/javascript"></script>
        <script src="js/products.js" type="text/javascript"></script>
    </head>

    <body>
        <jsp:include page="../view/Header.jsp"></jsp:include>
            <!-- product list -->
            <div class="section">
                <div class="listProduct">
                    <div class="section-header">
                        <h2>List Product</h2>
                    </div>
                    <div class="row" id="discount-products">
                    <c:forEach items="${requestScope.listProducts}" var="p">
                        <div class="col-3 col-md-6 col-sm-12">
                            <div class="product-card">
                                <div class="product-card-img">
                                    <a href="productDetails?pid=${p.ID}">
                                        <img src="${p.urlImg1}" alt="">
                                        <img src="${p.urlImg2}" alt="">
                                    </a>
                                </div>
                                <div class="product-card-info">
                                    <div class="product-btn">
                                        <a href="cart"><button class="btn-flat btn-hover btn-shop-now">shop now</button></a>
                                        <a href="addToCart?pID=${p.ID}"><button class="btn-flat btn-hover btn-cart-add">
                                                <i class='bx bxs-cart-add'></i>
                                            </button></a>
                                        <button class="btn-flat btn-hover btn-cart-add">
                                            <i class='bx bxs-heart'></i>
                                        </button>
                                    </div>
                                    <div class="product-card-name">
                                        ${p.name}
                                    </div>
                                    <div class="product-card-price">
                                        <span><del></del></span>
                                        <span class="curr-price">${p.price}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <ul class = "a pagination text-center" style="margin-right: 50px">
                    <style>
                        .a li{
                            background-color: #f5f5f5;
                            margin: 0px 2px;
                            padding: 2px;
                        }
                    </style>
                    <c:if test="${requestScope.pageI > 2}">
                        <li><a href="?page=1">First </a></li>
                        </c:if>
                        <c:if test="${requestScope.pageI > 1}">
                        <li><a href="?page=${requestScope.pageI-1}">${requestScope.pageI-1} </a></li>
                        </c:if>
                    <li><a style="color: red">${requestScope.pageI}</a></li>
                        <c:if test="${requestScope.pageI < requestScope.totalPage}">
                        <li><a href="?page=${requestScope.pageI+1}">${requestScope.pageI+1} </a></li>
                        </c:if>
                        <c:if test="${requestScope.pageI < requestScope.totalPage-1}">
                        <li><a href="?page=${requestScope.totalPage}">Last </a></li>
                        </c:if>
                </ul>

            </div>
        </div>
        <!-- end product list -->
        <jsp:include page="../view/Footer.jsp"></jsp:include>

    </body>

</html>
