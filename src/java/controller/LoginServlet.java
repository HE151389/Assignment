package controller;

import dal.AccountDBContext;
import dal.CustomerDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Customer;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dal.AccountDBContext AccDBC = new AccountDBContext();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        boolean isAdmin = request.getParameter("isAdmin").equals("Admin");
        Account account = AccDBC.getAccount(user, pass, isAdmin);
//        if (isAdmin) {
        if (account != null) {
            String remember = request.getParameter("remember");
            if (remember != null) {
                Cookie c_user = new Cookie("username", user);
                Cookie c_pass = new Cookie("password", pass);
                c_user.setMaxAge(3600 * 24);
                c_pass.setMaxAge(3600 * 24);
                response.addCookie(c_pass);
                response.addCookie(c_user);
            }
            request.getSession().setAttribute("account", account);
            CustomerDBContext cdbc = new CustomerDBContext();
            Customer c = cdbc.getCustomerByAccID(account.getAccountID());
            request.getSession().setAttribute("customer", c);
            response.sendRedirect("home");
        } else {
            request.setAttribute("mess", "Wrong username or password!");
            request.getRequestDispatcher("view/Login.jsp").forward(request, response);
        }
//        } else{
//            request.getSession().setAttribute("account", account);
//            response.sendRedirect("home");
//        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
