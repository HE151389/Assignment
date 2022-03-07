package controler;

import dal.CategoryDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

public class CategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryID = request.getParameter("categoryID");
        dal.ProductDBContext pdbc = new ProductDBContext();
        dal.CategoryDBContext cdbc = new CategoryDBContext();
        ArrayList<Category> listCategorys = cdbc.getCategorys();
        ArrayList<Product> listProductsByCategoryID = pdbc.getProductsByCategoryID(categoryID);
        request.setAttribute("listProducts", listProductsByCategoryID);
        request.setAttribute("listCategorys", listCategorys);
        request.setAttribute("tag", categoryID);
        request.getRequestDispatcher("view/Home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
