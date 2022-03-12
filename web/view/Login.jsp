<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body>
<<<<<<< HEAD
        <div class="container">
            <header>Login Form</header>
            <form action="login" method="post">
                <p class="text-red">${requestScope.mess}</p>
                <div class="input-field">
                    <input type="text" name="user" value="${cookie.username.value}" required>
                    <label>Email or Username</label>
                </div>
                <div class="input-field">
                    <input type="password" name="pass" value="${cookie.password.value}" required>
                    <label>Password</label>
                </div>
                <div class="input-field">
                    <select name="isAdmin" style="font-size: 20px;padding: 5px">
                        <option>Customer</option>
                        <option>Admin</option>
                    </select>
                </div>
                <input type="checkbox" name="remember"/>

                <label>Remember me</label>
                <div class="button">
                    <div class="inner"></div>
                    <button>LOGIN</button>
                </div>
            </form>
            <div class="auth">Or login with</div>
            <div class="links">
                <div class="facebook">
                    <i class="fab fa-facebook-square"><span>Facebook</span></i>
=======
        <c:if test="${sessionScope.account == null}">
            <div class="container">
                <header>Login Form</header>
                <form action="login" method="post">
                    <p class="text-red">${requestScope.mess}</p>
                    <div class="input-field">
                        <input type="text" name="user" value="${cookie.username.value}" required>
                        <label>Email or Username</label>
                    </div>
                    <div class="input-field">
                        <input type="password" name="pass" value="${cookie.password.value}" required>
                        <label>Password</label>
                    </div>
                    <input type="checkbox" name="remember"/>
                    <label>Remember me</label>
                    <div class="button">
                        <div class="inner"></div>
                        <button>LOGIN</button>
                    </div>
                </form>
                <div class="auth">Or login with</div>
                <div class="links">
                    <div class="facebook">
                        <i class="fab fa-facebook-square"><span>Facebook</span></i>
                    </div>
                    <div class="google">
                        <i class="fab fa-google-plus-square"><span>Google</span></i>
                    </div>
>>>>>>> parent of 2d533a2 (details + login  + signup)
                </div>
                <div class="google">
                    <i class="fab fa-google-plus-square"><span>Google</span></i>
                </div>
            </div>
<<<<<<< HEAD
            <div class="signup">
                Not a member? <a href="signup">Signup now</a>
            </div>
        </div>

=======
        </c:if>
        <c:if test="${sessionScope.account != null}">
            <c:redirect url="accountInfo"></c:redirect>
        </c:if>
>>>>>>> parent of 2d533a2 (details + login  + signup)
    </body>
</html>

