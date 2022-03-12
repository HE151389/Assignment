package controller;

import dal.AccountDBContext;
import dal.CustomerDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Customer;

public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int Aid = Integer.parseInt(request.getParameter("Aid"));
            AccountDBContext adbc = new AccountDBContext();
            CustomerDBContext cdbc = new CustomerDBContext();
            Customer c = cdbc.getCustomerByAccID(Aid);
            Account a = adbc.getAccountByAid(Aid);
            request.setAttribute("customer", c);
            request.getRequestDispatcher("view/Profile.jsp").forward(request, response);

        } catch (Exception e) {
            response.sendRedirect("login");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
