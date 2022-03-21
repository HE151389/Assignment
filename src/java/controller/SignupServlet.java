package controller;

import dal.AccountDBContext;
import dal.CustomerDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Customer;

public class SignupServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignupServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/Signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String name = request.getParameter("name");
        Date Dob = Date.valueOf(request.getParameter("DoB"));
        String email = request.getParameter("email");
        String cpass = request.getParameter("confirm_password");
        dal.AccountDBContext adbc = new AccountDBContext();
        if (adbc.getAccountByUsername(user) == null) {
            if (pass.equals(cpass)) {
                adbc.insertAccount(new Account(user, pass));
                dal.CustomerDBContext cdbc = new CustomerDBContext();
                Account a = adbc.getAccount(user, pass, false);
                cdbc.insertCustomer(new Customer(name, Dob, email, a));
                request.getSession().setAttribute("account", a);
                response.sendRedirect("home");
            } else {
                request.setAttribute("mess", "Confirm password must equal with password!");
                request.getRequestDispatcher("view/Signup.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("mess", "Username has been used!");
            request.getRequestDispatcher("view/Signup.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
