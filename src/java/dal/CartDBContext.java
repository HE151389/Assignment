package dal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;
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
            String sql = "SELECT cd.*,c.Aid,c.Total FROM Cart c\n"
                    + "INNER JOIN CartDetail cd \n"
                    + "ON c.CartID=cd.CartID\n"
                    + "WHERE c.Aid = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, accID);
            rs = statement.executeQuery();
            Hashtable<Integer, CartDetail> hashtableCart = new Hashtable<>();
            while (rs.next()) {
                c.setAcc(new AccountDBContext().getAccountByAid(accID));
                c.setId(rs.getInt("CartID"));
                c.setTotalMoney(rs.getDouble("Total"));
                CartDetail cd = new CartDetail();
                Product p = new ProductDBContext().getProduct(rs.getInt("Pid"));
                cd.setProduct(p);
                cd.setQuantity(rs.getInt("quantity"));
                cd.setPrice(rs.getDouble("price"));
                cd.setCart(c);
                hashtableCart.put(p.getID(), cd);
            }
            c.setHashtableCart(hashtableCart);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public int insertCart(Account a, double total) {
        try {
            String sql = "INSERT INTO [Cart]([Aid],[Total])\n"
                    + "VALUES(?,?)";
            statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, a.getAccountID());
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
    public static void main(String[] args) {
        CartDBContext cdbc = new CartDBContext();
        Cart cart = cdbc.getCartByAccID(1);
        System.out.println(cart.getId());
    }
}
