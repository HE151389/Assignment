package controller;

import dal.CartDBContext;
import dal.CartDetailDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Cart;

public class DeleteCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Account a = (Account) request.getSession().getAttribute("account");
        Cart cart;
        if (a != null) {
            cart = new CartDBContext().getCartByAccID(a.getAccountID());
        } else {
            cart = (Cart) request.getSession().getAttribute("cart");
        }
        cart.getHashtableCart().remove(id);
        new CartDetailDBContext().deleteCartDetail(cart, new ProductDBContext().getProduct(id));
        response.sendRedirect("cart");
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
