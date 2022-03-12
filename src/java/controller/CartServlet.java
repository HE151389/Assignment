package controller;

import dal.CartDBContext;
import dal.CartDetailsDBContext;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.CartDetail;

public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Aid = request.getParameter("Aid");
        if (Aid != null) {
            CartDetailsDBContext cddbc = new CartDetailsDBContext();
            CartDBContext cdbc = new CartDBContext();
            Cart cart = cdbc.getCartByAccID(Integer.parseInt(Aid));
            ArrayList<CartDetail> cds = cddbc.getCartDetailsByCart(cart);
            request.setAttribute("CartDetails", cds);
            request.getRequestDispatcher("view/Cart.jsp").forward(request, response);
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
