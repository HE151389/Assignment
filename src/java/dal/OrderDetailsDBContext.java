package dal;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
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
}
