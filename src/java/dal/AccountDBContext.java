package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDBContext extends DBContext{
    public Account getAccount(String userName, String password, boolean isAdmin){
        String sql = "SELECT * FROM Account WHERE userName = ? AND password = ? AND isAdmin = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            statement.setString(2, password);
            statement.setBoolean(3, isAdmin);
            ResultSet rs = statement.executeQuery();
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
    
    public Account getAccountByUsername(String userName){
        String sql = "SELECT * FROM Account WHERE userName = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            ResultSet rs = statement.executeQuery();
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
    
    public Account getAccountByAccountID(int Aid){
        String sql = "SELECT * FROM Account WHERE Aid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, Aid);
            ResultSet rs = statement.executeQuery();
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
    
    public void insertAccount(Account a){
        String sql = "INSERT INTO Account(username,password,isAdmin) VALUES(?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUserName());
            statement.setString(2, a.getPassword());
            statement.setBoolean(3, a.isIsAdmin());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args) {
        dal.AccountDBContext dabd = new AccountDBContext();
        Account a = new Account(1,"Admin01","Admin01", true);
        dabd.insertAccount(a);
        Account n = dabd.getAccount("Admin01","Admin01",true);
//        for (Account a : lDAs) {
            System.out.println(n.getUserName());
//        n

    }
}
