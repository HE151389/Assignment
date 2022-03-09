package controler;

import dal.CategoryDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

public class SearchServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String searchString = request.getParameter("search");
        dal.ProductDBContext pdbc = new ProductDBContext();
        ArrayList<Product> listSearchProducts = pdbc.getSearchProducts(searchString);
        dal.CategoryDBContext adbc = new CategoryDBContext();
        ArrayList<Category> listCategorys = adbc.getCategorys();
        request.setAttribute("listProducts", listSearchProducts);
        request.setAttribute("search", searchString);
        request.setAttribute("listCategorys", listCategorys);
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
