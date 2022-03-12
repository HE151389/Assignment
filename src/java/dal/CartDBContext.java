package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;

public class CartDBContext extends DBContext{

    public Cart getCartByAccID(int AccID) {
        try {
            String sql = "SELECT * FROM Cart WHERE Aid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, AccID);
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {                
                Cart c = new Cart();
                c.setCartID(rs.getInt(1));
                CustomerDBContext cdbc = new CustomerDBContext();
                c.setCustomer(cdbc.getCustomerByAccID(AccID));
                c.setTotal(rs.getDouble(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
