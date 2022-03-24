package dal;

import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

public class CustomerDBContext extends DBContext {

    public void insertCustomer(Customer cus) {
        String sql = "INSERT INTO Customer(name,dob,email,Aid) VALUES (?,?,?,?)";
        try {
            statement = connection.prepareStatement(sql);
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
            statement = connection.prepareStatement(sql);
            statement.setInt(1, accID);
            rs = statement.executeQuery();
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

    public Customer getCustomer(String name, Date DoB, String email) {
        try {
            String sql = "SELECT * FROM Customer WHERE name = ? AND email = ? AND dob = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setDate(3, DoB);
            rs = statement.executeQuery();
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

    public void updateCustomer(int id, String name, Date DoB, String email) {
        try {
            String sql = "UPDATE [Customer]\n"
                    + "SET [name] = ?,[email] = ?,[dob] = ?\n"
                    + "WHERE CusID = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setDate(3, DoB);
            statement.setInt(4, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Customer getCustomerByCusID(int cID) {
        try {
            String sql = "SELECT * FROM Customer WHERE cusID = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, cID);
            rs = statement.executeQuery();
            while (rs.next()) {
                Customer c = new Customer();
                c.setCusID(cID);
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
        cdbc.updateCustomer(1, "Customer01", Date.valueOf("2022-03-16"), "Cus01@email.com");
        System.out.println(cdbc.getCustomer("Customer01", Date.valueOf("2022-03-16"), "Cus01@email.com"));
//        System.out.println(cdbc.getCustomer("Customer01", Date.valueOf("2022-03-16"), "Cus01@email.com").getName());
    }

}
