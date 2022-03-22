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

public class ChangeCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Account a = (Account) request.getSession().getAttribute("account");
        Cart cart;
        if (a != null) {
            CartDBContext cdbc = new CartDBContext();
            cart = cdbc.getCartByAccID(a.getAccountID());
            cart.setHashtableCart(cdbc.getHashtableCart(cart));
            new CartDetailDBContext().updateCartDetail(cart, new ProductDBContext().getProduct(id), quantity);
        } else {
            cart = (Cart) request.getSession().getAttribute("cart");
        }
        cart.getHashtableCart().get(id).setQuantity(quantity);
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
