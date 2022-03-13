package controller;

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

public class ManagerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDBContext pdbc = new ProductDBContext();
        ArrayList<Product> listProducts = pdbc.getAllProducts();
        ArrayList<Category> listCategorys = new CategoryDBContext().getCategorys();
        request.setAttribute("listCategorys", listCategorys);
        request.setAttribute("listProducts", listProducts);
        request.getRequestDispatcher("view/Manager.jsp").forward(request, response);
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
