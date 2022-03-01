package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Accessory;

public class AccessoryDBContext extends DBContext {

    public ArrayList<Accessory> getAccessories() {
        ArrayList<Accessory> listAccessories = new ArrayList<>();
        try {
            String sql = "SELECT [accessoryID],[accessoryName],[accessoryTypeID],[accessoryQuantity],[accessoryPrice],[accessoryForm],[accessoryFrom]\n"
                    + "FROM [Accessory] ";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Accessory accessory = new Accessory();
                accessory.setAccessoryID(rs.getString("accessoryID"));
                accessory.setAccessoryName(rs.getString("accessoryName"));
                accessory.setAccessoryTypeID(rs.getString("accessoryTypeID"));
                accessory.setAccessoryQuantity(rs.getInt("accessoryQuantity"));
                accessory.setAccessoryPrice(rs.getDouble("accessoryPrice"));
                accessory.setAccessoryForm(rs.getString("accessoryForm"));
                accessory.setAccessoryFrom(rs.getString("accessoryFrom"));
                listAccessories.add(accessory);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccessoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listAccessories;
    }

    public Accessory getAccessory(String accessoryID) {
        try {
            String sql = "SELECT [accessoryID],[accessoryName],[accessoryTypeID],[accessoryQuantity],[accessoryPrice],[accessoryForm],[accessoryFrom]\n"
                    + "FROM [Accessory] WHERE accessoryID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, accessoryID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Accessory s = new Accessory();
                s.setAccessoryID(rs.getString("accessoryID"));
                s.setAccessoryName(rs.getString("accessoryName"));
                s.setAccessoryTypeID(rs.getString("accessoryTypeID"));
                s.setAccessoryQuantity(rs.getInt("accessoryQuantity"));
                s.setAccessoryPrice(rs.getDouble("accessoryPrice"));
                s.setAccessoryForm(rs.getString("accessoryForm"));
                s.setAccessoryFrom(rs.getString("accessoryFrom"));
                return s;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccessory(Accessory accessory) {
        try {
            String sql = "INSERT INTO Accessory (accessoryID,accessoryName,accessoryTypeID,accessoryQuantity,accessoryPrice,accessoryForm, accessoryFrom) "
                    + "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, accessory.getAccessoryID());
            statement.setString(2, accessory.getAccessoryName());
            statement.setString(3, accessory.getAccessoryTypeID());
            statement.setInt(4, accessory.getAccessoryQuantity());
            statement.setDouble(5, accessory.getAccessoryPrice());
            statement.setString(6, accessory.getAccessoryForm());
            statement.setString(7, accessory.getAccessoryFrom());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateStudent(Accessory accessory) {
        try {
            String sql = "UPDATE [Accessory] SET [accessoryName] = ?, [accessoryTypeID] = ?, [accessoryQuantity] = ?,\n"
                    + "	[accessoryPrice] = ?, [accessoryForm] = ?, [accessoryFrom] = ?\n"
                    + " WHERE [accessoryID] = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(7, accessory.getAccessoryID());
            statement.setString(1, accessory.getAccessoryName());
            statement.setString(2, accessory.getAccessoryTypeID());
            statement.setInt(3, accessory.getAccessoryQuantity());
            statement.setDouble(4, accessory.getAccessoryPrice());
            statement.setString(5, accessory.getAccessoryForm());
            statement.setString(6, accessory.getAccessoryFrom());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteStudent(String accessoryID) {
        try {
            String sql = "DELETE FROM [Accessory] WHERE accessoryID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, accessoryID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
