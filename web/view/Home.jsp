<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KJ Shop</title>
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" href="../css/app.css">
    <link rel="stylesheet" href="../css/grid.css">
</head>

<body>

    <!-- header -->
    <header>
        <!-- mobile menu -->
        <div class="mobile-menu bg-second">
            <a href="#" class="mb-logo">KJ Shop</a>
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
                    <img href="#" class="logo" src="./images/LOGO.jpg" alt="">
                    <div class="search">
                        <input type="text" placeholder="Search">
                        <i class='bx bx-search-alt'></i>
                    </div>
                    <ul class="user-menu">
                        <li><a href="#"><i class='bx bx-bell'></i></a></li>
                        <li><a href="#"><i class='bx bx-user-circle'></i></a></li>
                        <li><a href="#"><i class='bx bx-cart'></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end mid header -->
            <!-- bottom header -->
            <div class="bg-second">
                <div class="bottom-header container">
                    <ul class="main-menu">
                        <li><a href="#">home</a></li>
                        <!-- mega menu -->
                        <li class="mega-dropdown">
                            <a href="./products.html">Shop<i class='bx bxs-chevron-down'></i></a>
                            <div class="mega-content">
                                <div class="row">
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                            <h3>Mouse</h3>
                                            <ul>
                                                <li><a href="#">Corsair</a></li>
                                                <li><a href="#">Fuhlen</a></li>
                                                <li><a href="#">Logitech</a></li>
                                                <li><a href="#">Razer</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                            <h3>Keyboard</h3>
                                            <ul>
                                                <li><a href="#">Corsair</a></li>
                                                <li><a href="#">Fuhlen</a></li>
                                                <li><a href="#">Logitech</a></li>
                                                <li><a href="#">Razer</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                            <h3>Headphone</h3>
                                            <ul>
                                                <li><a href="#">Asus</a></li>
                                                <li><a href="#">Corsair</a></li>
                                                <li><a href="#">Logitech</a></li>
                                                <li><a href="#">Razer</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-12">
                                        <div class="box">
                                            <h3>Chair</h3>
                                            <ul>
                                                <li><a href="#">Akracing</a></li>
                                                <li><a href="#">Corsair</a></li>
                                                <li><a href="#">MSI</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!-- end mega menu -->
                        <li><a href="#">About us</a></li>
                        <li><a href="#">contact</a></li>
                    </ul>
                </div>
            </div>
            <!-- end bottom header -->
        </div>
        <!-- end main header -->
    </header>
    <!-- end header -->

    <!-- product list -->
    <div class="section">
        <div class="container">
            <div class="section-header">
                <h2>Discount Product</h2>
            </div>
            <div class="row" id="discount-products">
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="product-card">
                        <div class="product-card-img">
                            <img src="./images/KRazer01.jpg" alt="">
                            <img src="./images/KRazer01(2).jpg" alt="">
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
                                Kcorsair01
                            </div>
                            <div class="product-card-price">
                                <span><del>$50</del></span>
                                <span class="curr-price">$40</span>
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
    <!-- end product list -->

    <!-- product list -->
    <div class="section">
        <div class="container">
            <div class="section-header">
                <h2>best selling</h2>
            </div>
            <div class="row" id="best-products">
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="product-card">
                        <div class="product-card-img">
                            <img src="./images/JBL_Quantum_400_Product Image_Hero 02.png" alt="">
                            <img src="./images/JBL_Quantum_400_Product Image_Hero Mic Up.webp" alt="">
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
                                JBL Quantum 400
                            </div>
                            <div class="product-card-price">
                                <span><del>$300</del></span>
                                <span class="curr-price">$200</span>
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
    <!-- end product list -->

    <!-- footer -->
    <footer class="bg-second">
        <div class="footer-container">
            <div class="row">
                <div class="col-5 col-md-5">

                    <h2 class="footer-head">TRISIML COMPUTER ACCESSORY</h2>
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
                        <h3 class="contact-header">
                            LOGO
                        </h3>
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
    <script src="./js/app.js"></script>
    <script src="./js/index.js"></script>
</body>

</html>