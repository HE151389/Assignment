
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Account Settings UI Design</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/profile.css">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <section class="py-5 my-5">
                <div class="container">
                    <h1 class="mb-5">Profile</h1>
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                        <div class="profile-tab-nav border-right">
                            <div class="p-4">
                                <div class="img-circle text-center mb-3">
                                    <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/271deea8-e28c-41a3-aaf5-2913f5f48be6/de7834s-6515bd40-8b2c-4dc6-a843-5ac1a95a8b55.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI3MWRlZWE4LWUyOGMtNDFhMy1hYWY1LTI5MTNmNWY0OGJlNlwvZGU3ODM0cy02NTE1YmQ0MC04YjJjLTRkYzYtYTg0My01YWMxYTk1YThiNTUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BopkDn1ptIwbmcKHdAOlYHyAOOACXW0Zfgbs0-6BY-E" alt="Image" class="shadow">
                                </div>
                                <h4 class="text-center">${sessionScope.customer.name}</h4>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link ${sessionScope.isChangeInfo ? "active": ""}" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
                                <i class="fa fa-home text-center mr-1"></i> 
                                Account
                            </a>
                            <a class="nav-link ${sessionScope.isChangeInfo ? "": "active"}" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
                                <i class="fa fa-key text-center mr-1"></i> 
                                Password
                            </a>
                            <a class="nav-link" href="logout" >
                                <i class="fa fa-sign-out text-center mr-1"></i> 
                                Logout
                            </a>
                        </div>
                    </div>

                    <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">

                        <div class="tab-pane fade show ${sessionScope.isChangeInfo ? "active": ""}" id="account" role="tabpanel" aria-labelledby="account-tab">
                            <form action="updateProfile" method="get">
                                <h3 class="mb-4">Profile</h3>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>ID</label>
                                            <input name="id" readonly type="text" class="form-control" value="${sessionScope.customer.cusID}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input name="name" type="text" class="form-control" value="${sessionScope.customer.name}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input name="email" type="email" class="form-control" value="${sessionScope.customer.email}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Date of Birth</label>
                                            <input name="DoB" type="date" class="form-control" value="${sessionScope.customer.doB}">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                    <button class="btn btn-light">Cancel</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade show ${sessionScope.isChangeInfo ? "": "active"}" id="password" role="tabpanel" aria-labelledby="password-tab">
                            <form action="updateProfile?aID=${sessionScope.account.accountID}" method="post">
                                <h3 class="mb-4">Password Settings</h3>
                                <h5 class="mb-4">${requestScope.error}</h5>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Old password</label>
                                            <input name="oldPass" type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>New password</label>
                                            <input name="newPass" type="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Confirm new password</label>
                                            <input name="cnewPass" type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                    <button class="btn btn-light">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>