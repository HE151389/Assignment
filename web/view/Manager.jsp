
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Product Management</title>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/> 
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
                // Animate select box length
                var searchInput = $(".search-box input");
                var inputGroup = $(".search-box .input-group");
                var boxWidth = inputGroup.width();
                searchInput.focus(function () {
                    inputGroup.animate({
                        width: "300"
                    });
                }).blur(function () {
                    inputGroup.animate({
                        width: boxWidth
                    });
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container-xl">
                <div class="table-responsive">
                    <div class="table-wrapper">			
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="show-entries">
                                        <button type="button" class="btn btn-link"><a href="home">Back</a></button>
                                    </div>						
                                </div>
                                <div class="col-sm-4">
                                    <h2 class="text-center">Product <b>Management</b></h2>
                                </div>
                                <div class="col-sm-4">
                                    <div class="search-box">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                            Create Product
                                        </button>
                                        <!--                                        <div class="input-group">
                                                                                    <span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
                                                                                    <input type="text" class="form-control" placeholder="Search&hellip;">
                                                                                </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name <i class="fa fa-sort"></i></th>
                                    <th>Quantity</th>
                                    <th>Price<i class="fa fa-sort"></i></th>
                                    <th>Category</th>
                                    <th>From<i class="fa fa-sort"></i></th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.listProducts}" var="p">
                                <tr>
                                    <td>${p.ID}</td>
                                    <td>${p.name}</td>
                                    <td>${p.quantity}</td>
                                    <td>${p.price}</td>
                                    <td>${p.category.name}</td>
                                    <td>${p.from}</td>
                                    <td>
                                        <a href="update?Pid=${p.ID}" class="edit" title="Update" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>        
        </div> 
        <!-- Modal -->
        <form>
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Create Product</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table class="text-left table btn">
                                <tr>
                                    <td>Name:</td>
                                    <td><input name="name" type="text"/></td>
                                </tr>
                                <tr>
                                    <td>Quantity:</td>
                                    <td><input name="quantity" min="1" type="number"/></td>
                                </tr>
                                <tr>
                                    <td>Price:</td>
                                    <td><input name="price" min="1" type="number"/></td>
                                </tr>
                                <tr>
                                    <td>From:</td>
                                    <td><input name="from" type="text"/></td>
                                </tr>
                                <tr>
                                    <td>Category:</td>
                                    <td><select>
                                        <c:forEach items="${requestScope.listCategorys}" var="c">
                                            <option>${c.name}</option>
                                        </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </div>
            </div>

        </form>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>                                		