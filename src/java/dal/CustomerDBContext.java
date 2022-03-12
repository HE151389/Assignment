package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Customer;

public class CustomerDBContext extends DBContext {

    public void insertCustomer(Customer cus) {
        String sql = "INSERT INTO Customer(name,dob,email,Aid) VALUES (?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, cus.getName());
            statement.setDate(2, cus.getDoB());
            statement.setString(3, cus.getEmail());
            statement.setInt(4, cus.getCusAccount().getAccountID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Customer getCustomerByAccID(int accID) {
        try {
            String sql = "SELECT * FROM Customer WHERE Aid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {                
                Customer c = new Customer();
                c.setCusID(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setEmail(rs.getString(3));
                c.setDoB(rs.getDate(4));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        dal.CustomerDBContext cdbc = new dal.CustomerDBContext();
        cdbc.insertCustomer(new Customer("Customer01", Date.valueOf("2021-01-01"), "Cus01@email.com", new Account("User01", "User01")));
    }
}
