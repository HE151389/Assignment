<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                <li><a href="#">About us</a></li>
                                <li><a href="#">contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <ul class="user-menu">
                    <li><a href="#"><i class='bx bx-bell'></i></a></li>
                    <li><a href="profile"><i class='bx bx-user-circle'></i></a></li>
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
            window.location.href = "search?search="+c;
        }
    </script>
    <!-- end main header -->
</header>
<!-- end header -->
