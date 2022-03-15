package controller;

import dal.CustomerDBContext;
import dal.OrderDBContext;
import dal.OrderDetailsDBContext;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cart;
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
        Date DoB = Date.valueOf( request.getParameter("DoB"));
        String email = request.getParameter("email");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        double total  = cart.getTotalMoney();
        CustomerDBContext cdbc = new CustomerDBContext();
        OrderDetailsDBContext oddbc = new OrderDetailsDBContext();
        Customer c = cdbc.getCustomer(name, DoB, email);
        int oID = new OrderDBContext().insertOrder(c, total);
        Order o = new Order(oID, c, total);
        ArrayList<OrderDetails> listOrderDetails = new ArrayList<>(); 
        for (Map.Entry<Integer, Product> entry : cart.getCart().entrySet()) {
            Product value = entry.getValue();
            OrderDetails od = new OrderDetails(o, value, value.getQuantity());
            oddbc.insertOrderdetais(o, value);
            listOrderDetails.add(od);
        }
        o.getHashtable().put(oID, listOrderDetails);
        request.setAttribute("order", o);
        request.getRequestDispatcher("view/Bill.jsp").forward(request, response);
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
