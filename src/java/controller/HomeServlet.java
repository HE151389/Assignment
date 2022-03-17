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

public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDBContext pdbc = new ProductDBContext();
        CategoryDBContext adbc = new CategoryDBContext();
        int pageS = 8;
        int pageI;
        try {
            pageI = Integer.parseInt(request.getParameter("page"));
        } catch (Exception e) {
            pageI = 1;
        }
        int totalProducts = pdbc.getTotal();
        int totalPage = (totalProducts % pageS) == 0 ? totalProducts / pageS : (totalProducts / pageS) + 1;
        ArrayList<Product> listProducts = pdbc.getAllProducts(pageI, pageS);
        ArrayList<Category> listCategorys = adbc.getCategorys();
        request.setAttribute("pageI", pageI);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listProducts", listProducts);
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
