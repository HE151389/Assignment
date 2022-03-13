<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/cart.css" rel="stylesheet" type="text/css"/>
<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<jsp:include page="Header.jsp"></jsp:include>
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">CART</h1>
        </div>
    </section>

    <div class="container mb-4">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col" class="text-center">Quantity</th>
                                <th scope="col" class="text-right">Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sessionScope.cart.getCart()}" var="c">
                            <tr>
                                <td><img style="max-width: 50px;" src="${c.value.urlImg1}" /> </td>
                                <td>${c.value.name}</td>
                                <td>${c.value.price}</td>
                                <td class="text-center" style="max-width: 40px; ">
                                    <input style="max-width: 40px;" name="quantity" id="quantity" class="text-center" type="number" min="1" value="${c.value.quantity}" onchange="doChange(${c.key})"/>
                                </td>
                                <td class="text-right">${c.value.price * c.value.quantity}</td>
                                <td class="text-right"><button onclick="doDelete(${c.key})" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
                            </tr>
                        </c:forEach>    
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total Money</strong></td>
                            <td class="text-right"><strong>${sessionScope.cart.totalMoney}</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col mb-2">
            <div class="row">
                <div class="col-sm-12  col-md-6">
                    <a class="btn btn-block btn-light" href="home"><button class="btn btn-block btn-light">Continue Shopping</button></a>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                    <button class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="Footer.jsp"></jsp:include>

<script>
    function doDelete(id) {
        var c = confirm("Do you want to delete student?");
        if (c) {
            window.location.href = "deleteCart?id=" + id;
        }
    }
    function doChange(id) {
        var q = +document.getElementById("quantity").value;
        window.location.href = "changeCart?id=" + id + "&quantity=" + q;
    }
</script>
