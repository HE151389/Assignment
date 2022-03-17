package dal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import model.Category;

public class ProductDBContext extends DBContext {

    public ArrayList<Product> getAllProducts(int pageIndex, int pageSize) {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "SELECT * FROM \n"
                    + "(SELECT  p.*, c.Name as cName, ROW_NUMBER() OVER (ORDER BY pid ASC) AS ROWNUM\n"
                    + "FROM Product p LEFT JOIN Category c\n"
                    + "ON p.categoryID = c.categoryID)t\n"
                    + "WHERE ROWNUM >= (? - 1)*? + 1 AND ROWNUM <= ? * ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageIndex);
            statement.setInt(2, pageSize);
            statement.setInt(3, pageIndex);
            statement.setInt(4, pageSize);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setFrom(rs.getString(5));
                p.setUrlImg1(rs.getString(6));
                p.setUrlImg2(rs.getString(7));
                p.setDes(rs.getString(9));
                Category c = new Category();
                c.setCategoryID(rs.getString(8));
                c.setName(rs.getString(10));
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
            statement = connection.prepareStatement(sql);
            statement.setString(1, categoryID);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setFrom(rs.getString(5));
                p.setUrlImg1(rs.getString(6));
                p.setUrlImg2(rs.getString(7));
                p.setDes(rs.getString(9));
                Category c = new Category();
                c.setCategoryID(rs.getString(8));
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
            statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + searchString + "%");
            rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setFrom(rs.getString(5));
                p.setUrlImg1(rs.getString(6));
                p.setUrlImg2(rs.getString(7));
                p.setDes(rs.getString(9));
                Category c = new Category();
                c.setCategoryID(rs.getString(8));
                c.setName(rs.getString(10));
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
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pid);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setQuantity(rs.getInt(3));
                p.setPrice(rs.getDouble(4));
                p.setFrom(rs.getString(5));
                p.setUrlImg1(rs.getString(6));
                p.setUrlImg2(rs.getString(7));
                p.setDes(rs.getString(9));
                Category c = new Category();
                c.setCategoryID(rs.getString(8));
                c.setName(rs.getString(10));
                p.setCategory(c);
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertProducts(Product p) {
        try {
            String sql = "INSERT INTO [Product]([Name],[Quantity],[Price],[From],[Image1],[Image2],[CategoryID],[Description])\n"
                    + "     VALUES (?,?,?,?,?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, p.getName());
            statement.setInt(2, p.getQuantity());
            statement.setDouble(3, p.getPrice());
            statement.setString(4, p.getFrom());
            statement.setString(5, p.getUrlImg1());
            statement.setString(6, p.getUrlImg2());
            statement.setString(7, p.getCategory().getCategoryID());
            statement.setString(8, p.getDes());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateProducts(Product p) {
        try {
            String sql = "UPDATE [Product]\n"
                    + "   SET [Name] = ?,[Quantity] = ?,[Price] = ?,[From] = ?,[Image1] = ?\n"
                    + "      ,[Image2] = ?,[CategoryID] = ?,[Description] = ?\n"
                    + " WHERE Pid = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, p.getName());
            statement.setInt(2, p.getQuantity());
            statement.setDouble(3, p.getPrice());
            statement.setString(4, p.getFrom());
            statement.setString(5, p.getUrlImg1());
            statement.setString(6, p.getUrlImg2());
            statement.setString(7, p.getCategory().getCategoryID());
            statement.setString(8, p.getDes());
            statement.setInt(9, p.getID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProducts(int pID) {
        try {
            String sql = "DELETE FROM Product WHERE Pid = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public int getTotal(){
        try {
            String sql = "SELECT COUNT(*) AS Total FROM Product";
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            if(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public static void main(String[] args) {
        dal.ProductDBContext pdbc = new ProductDBContext();
//        pdbc.updateProducts(new Product(7, "Chair7", 10, 50, "MSI", "", "", new Category("C", "chair"), "C01"));
        ArrayList<Product> listProducts = pdbc.getAllProducts(1, 8);
//        Product p = pdbc.getProduct(7);
//        for (Product p : listProducts) {
//            System.out.println(p.getName());
//        }
        int a = pdbc.getTotal();
        System.out.println(a);
    }
}
