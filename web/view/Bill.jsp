<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>    
    body {
        background: #eee
    }
</style>
<jsp:include page="Header.jsp"></jsp:include>
    <div class="container mt-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-8">
                <div class="p-3 bg-white rounded">
                    <div class="row">
                        <div class="col-md-6">
                            <h1 class="text-uppercase">Invoice</h1>
                            <div class="billed"><span class="font-weight-bold text-uppercase">Billed:</span><span class="ml-1">${requestScope.order.cus.name}</span></div>
                        <div class="billed"><span class="font-weight-bold text-uppercase">Date:</span><span class="ml-1">May 13, 2020</span></div>
                        <div class="billed"><span class="font-weight-bold text-uppercase">Order ID:</span><span class="ml-1">${requestScope.order.id}</span></div>
                    </div>
                    <div class="col-md-6 text-right mt-3">
                        <h4 class="text-danger mb-0">KJ Computer Accessories</h4><span></span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.order.hashtable.get(order.id)}" var="od">
                                    <tr>
                                        <td>${od.product.name}</td>
                                        <td>${od.quantity}</td>
                                        <td>${od.product.price}</td>
                                        <td>${od.subTotal}</td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>
                                    <td>${requestScope.order.totalMoney}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="text-right mb-3">
                    <a href="home"><button button class="btn btn-danger btn-sm mr-5" >Continue shopping</button></a>
                </div>  
            </div>
        </div>
    </div>
</div>