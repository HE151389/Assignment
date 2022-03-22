package controller;

import dal.CartDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Cart;

public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Account a =  (Account) request.getSession().getAttribute("account");
        if (a!= null) {
            CartDBContext cdbc = new CartDBContext();
            Cart c = cdbc.getCartByAccID(a.getAccountID());
            c.setHashtableCart(cdbc.getHashtableCart(c));
            request.getSession().setAttribute("cart", c);
        }
        request.getRequestDispatcher("view/Cart.jsp").forward(request, response);

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
