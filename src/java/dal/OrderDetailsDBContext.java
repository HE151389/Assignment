package dal;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Product;

public class OrderDetailsDBContext extends DBContext {

    public void insertOrderdetais(Order o, Product p) {
        try {
            String sql = "INSERT INTO [OrderDetail]([OrderID],[Pid],[Quantity],[Price])\n"
                    + "VALUES(?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getId());
            statement.setInt(2, p.getID());
            statement.setInt(3, p.getQuantity());
            statement.setDouble(4, (double) p.getPrice() * p.getQuantity());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
