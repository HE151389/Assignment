package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

public class CategoryDBContext extends DBContext {

    public ArrayList<Category> getCategorys() {
        ArrayList<Category> listCategorys = new ArrayList<>();
        String sql = "SELECT * FROM Category";
        try {
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setCategoryID(rs.getString(1));
                c.setName(rs.getString(2));
                listCategorys.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listCategorys;
    }

    public Category getCategory(String cateID) {
        try {
            String sql = "SELECT * FROM Category WHERE CategoryID = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, cateID);
            rs = statement.executeQuery();
            while (rs.next()) {                
                Category c = new Category();
                c.setCategoryID(cateID);
                c.setName(rs.getString(2));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        dal.CategoryDBContext cdbc = new CategoryDBContext();
        Category listCategory = cdbc.getCategory("C");
//        for (Category listCategory : listCategorys) {
            System.out.println(listCategory.getName());
//        }
    }

}
