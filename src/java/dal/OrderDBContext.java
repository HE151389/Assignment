package dal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.Order;

public class OrderDBContext extends DBContext {

    public int insertOrder(Customer c, double total) {
        try {
            String sql = "INSERT INTO [Order]([CusID],[Total])\n"
                    + "VALUES(?,?)";
            statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, c.getCusID());
            statement.setDouble(2, total);
            statement.executeUpdate();
            rs = statement.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Order> getOrders() {
        ArrayList<Order> lO = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Order]";
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt(1));
                o.setCus(new CustomerDBContext().getCustomerByCusID(rs.getInt(2)));
                o.setTotalMoney(rs.getDouble(3));
                o.setStatus(rs.getString(4));
                lO.add(o);
            }
        } catch (Exception e) {
        }
        return lO;
    }

    public Order getOrder(int id) {

        try {
            String sql = "SELECT * FROM [Order] WHERE OrderID = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();
            if (rs.next()) {
                Order o = new Order();
                o.setId(id);
                o.setCus(new CustomerDBContext().getCustomerByCusID(rs.getInt(2)));
                o.setTotalMoney(rs.getDouble(3));
                o.setStatus(rs.getString(4));
                return o;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        OrderDBContext odbc = new OrderDBContext();
        Order order = odbc.getOrder(5);
//        ArrayList<Order> list = odbc.getOrders();
//        for (Order order : list) {
        System.out.println(order);
//        }
    }

    public void updateOrder(String status,int id) {
        try {
            String sql = "UPDATE [Order]\n"
                    + "   SET [Status] = ?\n"
                    + " WHERE OrderID = ?";
            statement.setString(1, status);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }
}
