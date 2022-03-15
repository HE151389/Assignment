package dal;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDBContext extends DBContext {

    public Account getAccount(String userName, String password, boolean isAdmin) {
        String sql = "SELECT * FROM Account WHERE userName = ? AND password = ? AND isAdmin = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            statement.setString(2, password);
            statement.setBoolean(3, isAdmin);
            rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccountID(rs.getInt(1));
                a.setUserName(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setIsAdmin(rs.getBoolean(4));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account getAccountByUsername(String userName) {
        String sql = "SELECT * FROM Account WHERE userName = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccountID(rs.getInt(1));
                a.setUserName(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setIsAdmin(rs.getBoolean(4));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(Account a) {
        String sql = "INSERT INTO Account(username,password,isAdmin) VALUES(?,?,?)";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setBoolean(3, a.isIsAdmin());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountByAid(int Aid) {
        String sql = "SELECT * FROM Account WHERE Aid = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, Aid);
            rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccountID(rs.getInt(1));
                a.setUserName(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setIsAdmin(rs.getBoolean(4));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

//    public static void main(String[] args) {
//        dal.AccountDBContext dabd = new AccountDBContext();
//        Account a = new Account(1,"Admin01","Admin01");
//        dabd.insertAccount(a);
//        Account n = dabd.getAccount("Admin01","Admin01");
////        for (Account a : lDAs) {
//            System.out.println(n.getUserName());
////        n
//
//    }
    public void updateAccount(int id, String newP) {
        String sql = "UPDATE [Account] SET [password] = ? WHERE Aid = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, newP);
            statement.setInt(2, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
