package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.CartDetail;
import model.Product;

public class CartDetailsDBContext extends DBContext {

    public void insertCartDetails(Cart c, Product p, int quantity) {
        try {
            String sql = "INSERT INTO [CartDetail]([CarID],[Pid],[Quantity],[Price])\n"
                    + "   VALUES(?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, c.getCartID());
            statement.setInt(2, p.getID());
            statement.setInt(3, quantity);
            statement.setDouble(4, p.getPrice()*quantity);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<CartDetail> getCartDetailsByCart(Cart cart){
        ArrayList<CartDetail> listCartDetails = new ArrayList<>();
        try {
            String sql = "SELECT [CarID],[Pid],[Quantity],[Price]\n"
                    + "   FROM CartDetail WHERE [CarID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getCartID());
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {                
                CartDetail cd = new CartDetail();
                cd.setCart(cart);
                ProductDBContext pdbc = new ProductDBContext();
                Product p = pdbc.getProduct(rs.getInt(2));
                cd.setProduct(p);
                cd.setQuantity(rs.getInt(3));
                cd.setPrice(rs.getDouble(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCartDetails;
    }

}
