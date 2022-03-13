package controller;

import dal.ProductDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
import model.Product;

public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pID = Integer.parseInt(request.getParameter("pID"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if(cart == null){
            cart = new Cart();
        }
        if (cart.getCart().containsKey(pID)) {
            int oldQuantity = cart.getCart().get(pID).getQuantity();
            cart.getCart().get(pID).setQuantity(oldQuantity+1);
        }else{
            Product p = new ProductDBContext().getProduct(pID);
            p.setQuantity(1);
            cart.getCart().put(pID, p);
        }
        request.getSession().setAttribute("cart", cart);
        response.sendRedirect("home");
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
