package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    protected Connection connection;
    protected PreparedStatement statement;
    protected ResultSet rs;

    public DBContext() {
        try {
           String user = "sa";
           String pass = "sa";
           String url = "jdbc:sqlserver://LAPTOP-T9F2DOGS:1433;databaseName=Assignment";
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           connection = DriverManager.getConnection(url, user, pass);
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
}
