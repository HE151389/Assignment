package dal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.OrderDetails;
import model.Product;

public class OrderDetailsDBContext extends DBContext {

    public void insertOrderdetais(Order o, Product p, int quantity) {
        try {
            String sql = "INSERT INTO [OrderDetail]([OrderID],[Pid],[Quantity],[subTotal])\n"
                    + "VALUES(?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getId());
            statement.setInt(2, p.getID());
            statement.setInt(3, quantity);
            statement.setDouble(4, (double) p.getPrice() * quantity);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Hashtable<Integer, OrderDetails> getHashtableByOID(int id) {
        Hashtable<Integer, OrderDetails> hashtableOrder = new Hashtable<>();
        try {
            String sql = "SELECT od.*,Total,CusID,[status] FROM [Order] o INNER JOIN OrderDetail od\n"
                    + "ON o.OrderID = od.OrderID\n"
                    + "WHERE O.OrderID = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetails od = new OrderDetails();
                Order o = new Order();
                o.setId(id);
                o.setCus(new CustomerDBContext().getCustomerByCusID(rs.getInt("CusID")));
                o.setTotalMoney(rs.getDouble("Total"));
                o.setStatus(rs.getString("status"));
                od.setOrder(o);
                int pID = rs.getInt("Pid");
                od.setProduct(new ProductDBContext().getProduct(pID));
                od.setQuantity(rs.getInt("Quantity"));
                od.setSubTotal(rs.getDouble("SubTotal"));
                hashtableOrder.put(pID, od);
            }
        } catch (Exception e) {
        }
        return hashtableOrder;
    }
}
