package dal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Cart;
import model.CartDetail;
import model.Product;

public class CartDBContext extends DBContext {

    public Cart getCartByAccID(int accID) {
        Cart c = new Cart();
        try {
            String sql = "SELECT * FROM Cart \n"
                    + "WHERE Aid = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, accID);
            rs = statement.executeQuery();
            while (rs.next()) {
                c.setAcc(new AccountDBContext().getAccountByAid(accID));
                c.setId(rs.getInt("CartID"));
                c.setTotalMoney(rs.getDouble("Total"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public Hashtable<Integer, CartDetail> getHashtableCart(Cart cart) {
        Hashtable<Integer, CartDetail> hashtableCart = new Hashtable<>();
        try {
            String sql = "SELECT [Pid]\n"
                    + "      ,[Quantity]\n"
                    + "      ,[SubTotal]\n"
                    + "  FROM [CartDetail]\n"
                    + "  WHERE CartID = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getId());
            rs = statement.executeQuery();
            while (rs.next()) {                
                CartDetail cd = new CartDetail();
                cd.setCart(cart);
                Product p =new ProductDBContext().getProduct(rs.getInt("Pid"));
                cd.setProduct(p);
                cd.setQuantity(rs.getInt("Quantity"));
                cd.setSubTotal(rs.getDouble("SubTotal"));
                hashtableCart.put(p.getID(), cd);
            }
            return hashtableCart;
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hashtableCart;
    }

    public void insertCart(Account a, double total) {
        try {
            String sql = "INSERT INTO [Cart]([Aid],[Total])\n"
                    + "VALUES(?,?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, a.getAccountID());
            statement.setDouble(2, total);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        CartDBContext cdbc = new CartDBContext();
//        Cart cart = cdbc.getCartByAccID(1);
        Hashtable<Integer, CartDetail> hashtableCart = cdbc.getHashtableCart(cdbc.getCartByAccID(1));
        for (Map.Entry<Integer, CartDetail> entry : hashtableCart.entrySet()) {
            Integer key = entry.getKey();
            CartDetail value = entry.getValue();
            System.out.println(value.getQuantity());
        }
//        System.out.println(cart.getId());
    }
}
