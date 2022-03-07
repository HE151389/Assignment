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
        <link rel="stylesheet" href="css/app.css">
    </head>

    <body>

        <!-- header -->
        <header>
            <!-- mobile menu -->
            <div class="mobile-menu bg-second">
                <img href="#" class="logo" src="images/LOGO.jpg" alt="">
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
                        <img href="home" class="logo" src="images\LOGO.jpg" alt="">
                        <div class="middle-header">
                            <div class="search">
                                <input type="text" placeholder="Search">
                                <i class='bx bx-search-alt'></i>
                            </div>
                            <div class="bg-second">
                                <div class="bottom-header container">
                                    <ul class="main-menu">
                                        <li><a href="home">home</a></li>
                                        <!-- mega menu -->
                                        <li class="mega-dropdown">
                                            <a href="./products.html">Shop<i class='bx bxs-chevron-down'></i></a>
                                            <div class="mega-content">
                                                <div class="row">
                                                    <c:forEach items="${requestScope.listCategorys}" var="c">
                                                    <div class="col-3 col-md-12">
                                                        <div class="box">
                                                            <h3><a ${tag == c.categoryID ? "active" : ""} href="category?categoryID=${c.categoryID}">${c.name}</a></h3>
                                                            
                                                            <ul>
<!--                                                            <li><a href="#">Corsair</a></li>
                                                                <li><a href="#">Fuhlen</a></li>
                                                                <li><a href="#">Logitech</a></li>
                                                                <li><a href="#">Razer</a></li>-->
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- end mega menu -->
                                        <li><a href="#">About us</a></li>
                                        <li><a href="#">contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <ul class="user-menu">
                            <li><a href="#"><i class='bx bx-bell'></i></a></li>
                            <li><a href="login"><i class='bx bx-user-circle'></i></a></li>
                            <li><a href="#"><i class='bx bx-cart'></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- end mid header -->
                <!-- bottom header -->
                <!-- end bottom header -->
            </div>
            <!-- end main header -->
        </header>
        <!-- end header -->

        <!-- product list -->
        <div class="section">
            <div class="discountProduct">
                <div class="section-header">
                    <h2>List Product</h2>
                </div>
                <div class="row" id="discount-products">
                    <c:forEach items="${requestScope.listProducts}" var="p">
                        <div class="col-3 col-md-6 col-sm-12">
                            <div class="product-card">
                                <div class="product-card-img">
                                    <img src="${p.urlImg1}" alt="">
                                    <img src="${p.urlImg2}" alt="">
                                </div>
                                <div class="product-card-info">
                                    <div class="product-btn">
                                        <button class="btn-flat btn-hover btn-shop-now">shop now</button>
                                        <button class="btn-flat btn-hover btn-cart-add">
                                            <i class='bx bxs-cart-add'></i>
                                        </button>
                                        <button class="btn-flat btn-hover btn-cart-add">
                                            <i class='bx bxs-heart'></i>
                                        </button>
                                    </div>
                                    <div class="product-card-name">
                                        ${p.name}
                                    </div>
                                    <div class="product-card-price">
                                        <span><del></del></span>
                                        <span class="curr-price">$40</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                
            </div>
        </div>
        <!-- end product list -->

<!--         product list 
        <div class="section">
            <div class="listProduct">
                <div class="section-header">
                    <h2>List Product</h2>
                </div>

                <div class="row" id="list-products">
                    
                        <div class="col-3 col-md-6 col-sm-12">
                            <div class="product-card">
                                <div class="product-card-img">
                                    <img src="1}" alt="">
                                    <img src="" alt="">
                                </div>
                                <div class="product-card-info">
                                    <div class="product-btn">
                                        <button class="btn-flat btn-hover btn-shop-now">shop now</button>
                                        <button class="btn-flat btn-hover btn-cart-add">
                                            <i class='bx bxs-cart-add'></i>
                                        </button>
                                        <button class="btn-flat btn-hover btn-cart-add">
                                            <i class='bx bxs-heart'></i>
                                        </button>
                                    </div>
                                    <div class="product-card-name">
                                        
                                    </div>
                                    <div class="product-card-price">
                                                                                <span><del></del></span>
                                        <span class="curr-price">${a.accessoryPrice}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                </div>


                <div class="section-footer">
                    <a href="./products.html" class="btn-flat btn-hover">view all</a>
                </div>
            </div>
        </div>
         end product list -->

        <!-- footer -->
        <footer class="bg-second">
            <div class="footer-container">
                <div class="row">
                    <div class="col-5 col-md-5">

                        <h2 class="footer-head">KJ COMPUTER ACCESSORY</h2>
                        <ul class="menu">
                            <li>
                                <p>Address: Hoa Lac, Thach That, Ha Noi</p>
                            </li>
                            <li><a href="#">Email: namhthe151389@fpt.edu.vn</a></li>
                            <li><a href="#">Phone: 0972383569</a></li>
                        </ul>

                    </div>
                    <div class="col-5 col-md-5 col-sm-12">
                        <div class="subscribe">
                            <input type="email" placeholder="ENTER YOUR EMAIL">
                            <button>subscribe</button>
                        </div>
                    </div>
                    <div class="col-2 col-md-2 col-sm-12">
                        <div class="contact">
                            <img href="#" class="logo" src="images\LOGO.jpg" alt="">
                            <ul class="contact-socials">
                                <li><a href="#">
                                        <i class='bx bxl-facebook-circle'></i>
                                    </a></li>
                                <li><a href="#">
                                        <i class='bx bxl-instagram-alt'></i>
                                    </a></li>
                                <li><a href="#">
                                        <i class='bx bxl-youtube'></i>
                                    </a></li>
                                <li><a href="#">
                                        <i class='bx bxl-twitter'></i>
                                    </a></li>
                            </ul>
                        </div>

                    </div>

                </div>
            </div>
        </footer>
        <!-- end footer -->

        <!-- app js -->
        <script src="js/app.js"></script>
        <!--        <script src="js/index.js"></script>-->
    </body>

</html>
