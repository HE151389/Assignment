<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/cart.css" rel="stylesheet" type="text/css"/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
                                <!--<th></th>-->
                                <th scope="col">Image</th>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col" class="text-center">Quantity</th>
                                <th scope="col" class="text-right">Sub Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sessionScope.cart.getCart()}" var="c">
                            <tr>
                                <!--<td><input type="checkbox" name="choose"/></td>-->
                                <td><img style="max-width: 50px;" src="${c.value.urlImg1}" /> </td>
                                <td>${c.value.name}</td>
                                <td>${c.value.price}</td>
                                <td class="text-center" style="max-width: 40px; ">
                                    <input style="max-width: 40px;" name="quantity" id="quantity${c.key}" class="text-center" type="number" min="1" max="" value="${c.value.quantity}" onchange="doChange(${c.key})"/>
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
                            <td></td>
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
                    <button data-toggle="modal" data-target="#exampleModal" class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button>
                </div>
                <form action="order" method="post">
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Your information</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <table class="text-left table btn">
                                        <tr>
                                            <td>Name:</td>
                                            <td><input name="name" type="text" value="${sessionScope.customer.name}" required/></td>
                                        </tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td><input name="email" type="email" value="${sessionScope.customer.email}" required/></td>
                                        </tr>
                                        <tr>
                                            <td>Date of Birth</td>
                                            <td><input name="DoB" type="date" value="${sessionScope.customer.doB}" required/></td>
                                        </tr>

                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
        var q = +document.getElementById("quantity"+id).value;
        window.location.href = "changeCart?id=" + id + "&quantity=" + q;
    }
</script>
