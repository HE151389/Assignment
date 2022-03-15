package dal;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.Order;

public class OrderDBContext extends DBContext {

    public int insertOrder(Customer c,double  total) {
        try {
            String sql = "INSERT INTO [Order]([CusID],[Total])\n"
                    + "VALUES(?,?)";
            statement = connection.prepareStatement(sql,statement.RETURN_GENERATED_KEYS);
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
    
}
