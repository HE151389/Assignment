package controller;

import dal.CartDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Cart;
import model.CartDetail;
import model.Product;

public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int page;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (Exception e) {
            page = 1;
        }
        int pID = Integer.parseInt(request.getParameter("pID"));
        Account a = (Account) request.getSession().getAttribute("account");
        Cart cart;
        if(a != null){
            cart = new CartDBContext().getCartByAccID(a.getAccountID());
            
        }else{
            cart = (Cart) request.getSession().getAttribute("cart");
        }
        
        if(cart == null){
            cart = new Cart();
        }
        
        if (cart.getHashtableCart().containsKey(pID)) {
            int oldQuantity = cart.getHashtableCart().get(pID).getQuantity();
            cart.getHashtableCart().get(pID).setQuantity(oldQuantity+1);
        }else{
            CartDetail cd = new CartDetail();
            Product p = new ProductDBContext().getProduct(pID);
            cd.setCart(cart);
            cd.setProduct(p);
            cd.setQuantity(1);
            cd.setPrice(p.getPrice());
            cart.getHashtableCart().put(pID, cd);
        }
        request.getSession().setAttribute("cart", cart);
        response.sendRedirect("home?page="+page);
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
