package controller;

import dal.CartDBContext;
import dal.CustomerDBContext;
import dal.OrderDBContext;
import dal.OrderDetailsDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Cart;
import model.CartDetail;
import model.Customer;
import model.Order;
import model.OrderDetails;
import model.Product;

public class OrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        Date DoB = Date.valueOf(request.getParameter("DoB"));
        String email = request.getParameter("email");
        Account a = (Account) request.getSession().getAttribute("account");
        Cart cart;
        if (a != null) {
            cart = new CartDBContext().getCartByAccID(a.getAccountID());
        } else {
            cart = (Cart) request.getSession().getAttribute("cart");
        }
        double total = cart.getTotalMoney();
        CustomerDBContext cdbc = new CustomerDBContext();
        OrderDetailsDBContext oddbc = new OrderDetailsDBContext();
        Customer c = cdbc.getCustomer(name, DoB, email);
        if (c == null) {
            c = new Customer(name, DoB, email, null);
        }
        int oID = new OrderDBContext().insertOrder(c, total);
        Order o = new Order(oID, c, total);
        for (Map.Entry<Integer, CartDetail> entry : cart.getHashtableCart().entrySet()) {
            CartDetail value = entry.getValue();
            int key = entry.getKey();
            int quantity = value.getQuantity();
            OrderDetails od = new OrderDetails(o, value.getProduct(), quantity);
            o.getHashtable().put(key, od);
            oddbc.insertOrderdetais(o, value.getProduct(), quantity);
            Product p = new ProductDBContext().getProduct(value.getProduct().getID());
            p.setQuantity(p.getQuantity() - quantity);
            new ProductDBContext().updateProducts(p);
        }

        request.setAttribute("order", o);
        request.getRequestDispatcher("view/Bill.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
