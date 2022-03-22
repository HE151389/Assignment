package dal;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.CartDetail;
import model.Product;

public class CartDetailDBContext extends DBContext {

    public void insertCartDetails(Cart c, CartDetail cd) {
        try {
            String sql = "INSERT INTO [CartDetail]([CartID],[Pid],[Quantity],[SubTotal])\n"
                    + "VALUES(?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, c.getId());
            statement.setInt(2, cd.getProduct().getID());
            statement.setInt(3, cd.getQuantity());
            statement.setDouble(4, cd.getSubTotal());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCartDetail(Cart c, Product p, int quantity) {
        try {
            String sql = "UPDATE [CartDetail]\n"
                    + "   SET [quantity] = ?\n"
                    + " WHERE CartID = ? AND Pid = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(2, c.getId());
            statement.setInt(3, p.getID());
            statement.setInt(1, quantity);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteCartDetail(Cart c, Product p) {
        try {
            String sql = "DELETE FROM [CartDetail]\n"
                    + " WHERE CartID = ? AND Pid = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, c.getId());
            statement.setInt(2, p.getID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
