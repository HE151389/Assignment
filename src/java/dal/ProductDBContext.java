package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import model.Category;

public class ProductDBContext extends DBContext {

    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "SELECT p.*,c.name FROM Product p INNER JOIN Category c \n"
                    + "ON p.categoryID = c.categoryID";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setForm(rs.getString(5));
                p.setFrom(rs.getString(6));
                p.setUrlImg1(rs.getString(7));
                p.setUrlImg2(rs.getString(8));
                p.setDescription(rs.getString(10));
                Category c = new Category();
                c.setCategoryID(rs.getString(9));
                c.setName(rs.getString(11));
                p.setCategory(c);
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }
    
    public ArrayList<Product> getProductsByCategoryID(String categoryID) {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "SELECT p.*,c.name FROM Product p INNER JOIN Category c \n"
                    + "ON p.categoryID = c.categoryID \n"
                    + "WHERE p.categoryID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, categoryID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setForm(rs.getString(5));
                p.setFrom(rs.getString(6));
                p.setUrlImg1(rs.getString(7));
                p.setUrlImg2(rs.getString(8));
                Category c = new Category();
                c.setCategoryID(rs.getString(9));
                c.setName(rs.getString(10));
                p.setCategory(c);
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }
    
    public ArrayList<Product> getSearchProducts(String searchString) {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "SELECT p.*,c.name FROM Product p INNER JOIN Category c \n"
                    + "ON p.categoryID = c.categoryID \n"
                    + "WHERE p.name LIKE ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%"+searchString+"%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setForm(rs.getString(5));
                p.setFrom(rs.getString(6));
                p.setUrlImg1(rs.getString(7));
                p.setUrlImg2(rs.getString(8));
                p.setDescription(rs.getString(10));
                Category c = new Category();
                c.setCategoryID(rs.getString(9));
                c.setName(rs.getString(11));
                p.setCategory(c);
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }

    public Product getProduct(int pid) {
        try {
            String sql = "SELECT p.*,c.name FROM Product p INNER JOIN Category c \n"
                    + "ON p.categoryID = c.categoryID \n"
                    + "WHERE Pid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setForm(rs.getString(5));
                p.setFrom(rs.getString(6));
                p.setUrlImg1(rs.getString(7));
                p.setUrlImg2(rs.getString(8));
                p.setDescription(rs.getString(10));
                Category c = new Category();
                c.setCategoryID(rs.getString(9));
                c.setName(rs.getString(11));
                p.setCategory(c);
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        dal.ProductDBContext pdbc = new ProductDBContext();
        Product p = pdbc.getProduct(4);
//        for (Product p : listProducts) {
            System.out.println(p.getName());
//        }
    }
}
