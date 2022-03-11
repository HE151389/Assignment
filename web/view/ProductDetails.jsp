<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/productDetail.css" rel="stylesheet" type="text/css"/>
        <link href="../css/app.css" rel="stylesheet" type="text/css"/>
        <title>eCommerce Product Detail</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

    </head>

    <body>
        <header>
            <!-- mobile menu -->
            <div class="mobile-menu bg-second">
                <img onclick="doBack()" class="logo" src="images/LOGO.jpg" alt="">
                <span class="mb-menu-toggle" id="mb-menu-toggle">
                    <i class='bx bx-menu'></i>
                </span>
            </div>
            <!-- end mobile menu -->
            <!-- main header -->
            <div class="header-wrapper" id="header-wrapper">
                <span class="mb-menu-toggle mb-menu-close" id="mb-menu-close">
                    <i class='bx bx-x'></i>
                </span>
                <!-- mid header -->
                <div class="bg-main">
                    <div class="mid-header container">
                        <img href="home" class="logo" src="../images/LOGO.jpg" alt="">
                        <div class="middle-header">
                            <div class="search">
                                <input value="${requestScope.search}" id="search" type="text" placeholder="Search">
                                <i onclick="doSearch();" class='bx bx-search-alt'></i>
                            </div>

                            <div class="bg-second">
                                <div class="bottom-header container">
                                    <ul class="main-menu">
                                        <li><a href="home">home</a></li>
                                        <!-- mega menu -->
                                        <li class="mega-dropdown">
                                            <a>Shop<i class='bx bxs-chevron-down'></i></a>
                                            <div class="mega-content">
                                                <div class="row">
                                                    <c:forEach items="${requestScope.listCategorys}" var="c">
                                                        <div class="col-3 col-md-12">
                                                            <div class="box">
                                                                <h3><a href="category?categoryID=${c.categoryID}">${c.name}</a></h3>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- end mega menu -->
                                        <c:if test="${sessionScope.account.isAdmin}" >
                                            <li><a href="product/manager">Manager Product</a></li>
                                        </c:if>
                                        <li><a href="#">About us</a></li>
                                        <li><a href="#">contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <ul class="user-menu">
                            <li><a href="#"><i class='bx bx-bell'></i></a></li>
                            <li><a href="profile?Aid=${sessionScope.account.accountID}"><i class='bx bx-user-circle'></i></a></li>
                            <li><a href="cart"><i class='bx bx-cart'></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- end mid header -->
                <!-- bottom header -->
                <!-- end bottom header -->
            </div>
            <script>
                function doSearch() {
                    var c = document.getElementById("search").value;
                    window.location.href = "search?search=" + c;
                }
            </script>
            <!-- end main header -->
        </header>
        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane active" id="pic-1"><img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
                            </div>
                            <ul class="preview-thumbnail nav nav-tabs">
                                <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                                <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                                <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                                <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                                <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                            </ul>

                        </div>
                        <div class="details col-md-6">
                            <h3 class="product-title">men's shoes fashion</h3>
                            <div class="rating">
                                <div class="stars">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
                                <span class="review-no">41 reviews</span>
                            </div>
                            <p class="product-description">Suspendisse quos? Tempus cras iure temporibus? Eu laudantium cubilia sem sem! Repudiandae et! Massa senectus enim minim sociosqu delectus posuere.</p>
                            <h4 class="price">current price: <span>$180</span></h4>
                            <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
                            <h5 class="sizes">sizes:
                                <span class="size" data-toggle="tooltip" title="small">s</span>
                                <span class="size" data-toggle="tooltip" title="medium">m</span>
                                <span class="size" data-toggle="tooltip" title="large">l</span>
                                <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                            </h5>
                            <h5 class="colors">colors:
                                <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                                <span class="color green"></span>
                                <span class="color blue"></span>
                            </h5>
                            <div class="action">
                                <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
