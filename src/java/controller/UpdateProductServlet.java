package controller;

import dal.CategoryDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

public class UpdateProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pID = Integer.parseInt(request.getParameter("pID"));
        int page = Integer.parseInt(request.getParameter("page"));
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        String from = request.getParameter("from");
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String des = request.getParameter("des");
        String cateID = request.getParameter("category");
        Category cate = new CategoryDBContext().getCategory(cateID);
        Product p = new Product(pID, name, quantity, price, from, image1, image2, cate, des);
        new ProductDBContext().updateProducts(p);
        response.sendRedirect("manager?page="+page);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pID = Integer.parseInt(request.getParameter("pID"));
        int page = Integer.parseInt(request.getParameter("page"));
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        String from = request.getParameter("from");
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String des = request.getParameter("des");
        String cateID = request.getParameter("category");
        Category cate = new CategoryDBContext().getCategory(cateID);
        Product p = new Product(pID, name, quantity, price, from, image1, image2, cate, des);
        new ProductDBContext().updateProducts(p);
        response.sendRedirect("manager?page="+page);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
