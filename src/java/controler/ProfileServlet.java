package controler;

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
        String Aid = request.getParameter("Aid");
        if (Aid != "") {
            AccountDBContext adbc = new AccountDBContext();
            Account acc = adbc.getAccountByAccountID(Integer.parseInt(Aid));
            CustomerDBContext cdbc = new CustomerDBContext();
            Customer cus = cdbc.getCustomerByAccountID(acc.getAccountID());
            request.setAttribute("customer", cus);
            request.getRequestDispatcher("view/Profile.jsp").forward(request, response);
        } else {
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
