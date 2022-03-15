package controller;

import dal.CustomerDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;

public class ProfileServlet extends AuthenticationServlet{

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int Aid = Integer.parseInt(request.getParameter("Aid"));
            Customer c = new CustomerDBContext().getCustomerByAccID(Aid);
            request.getSession().setAttribute("customer", c);
            request.getRequestDispatcher("view/Profile.jsp").forward(request, response);
        } catch (Exception e) {
            
        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
