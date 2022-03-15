package controller;

import dal.AccountDBContext;
import dal.CustomerDBContext;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

public class UpdateProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id =  Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Date doB = Date.valueOf(request.getParameter("DoB"));
        new CustomerDBContext().updateCustomer(id, name, doB, email);
        response.sendRedirect("profile?Aid="+id);
        request.getSession().setAttribute("isChangeInfo", true);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id =  Integer.parseInt(request.getParameter("aID"));
        String oldP = request.getParameter("oldPass");
        String newP = request.getParameter("newPass");
        String cnewP = request.getParameter("cnewPass");
        AccountDBContext adbc = new AccountDBContext();
        if(newP.equals(cnewP)){
            Account a = (Account) request.getSession().getAttribute("account");
            if (a.getPassword().equalsIgnoreCase(oldP)) {
                adbc.updateAccount(id,newP);
                a.setPassword(newP);
                request.getSession().setAttribute("account", a);
                request.setAttribute("error", "Update succesfully!");
            }else{
                request.setAttribute("error", "wrong password!");
            }
        }else{
            request.setAttribute("error", "Confirm password must equal with password!");
        }
        request.getSession().setAttribute("isChangeInfo", false);
        response.sendRedirect("profile?Aid="+id);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
