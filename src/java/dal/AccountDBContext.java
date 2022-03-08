package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDBContext extends DBContext{
    public Account getAccount(String userName, String password){
        String sql = "SELECT * FROM Account WHERE userName = ? AND password = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccountID(rs.getString("accountID"));
                a.setUserName(rs.getString("userName"));
                a.setPassword(rs.getString("password"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        dal.AccountDBContext dabd = new AccountDBContext();
        Account a = dabd.getAccount("Admin01","Admin01");
//        for (Account a : lDAs) {
            System.out.println(a.getUserName());
//        }

    }
}
