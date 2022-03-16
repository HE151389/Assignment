package controller;

import dal.CategoryDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Category;
import model.Product;

public class ManagerServlet extends AuthenticationServlet {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Account a = (Account) request.getSession().getAttribute("account");
        if (a.isIsAdmin()) {
            ProductDBContext pdbc = new ProductDBContext();
            int pageS = 8;
            int pageI;
            try {
                pageI = Integer.parseInt(request.getParameter("page"));
            } catch (NumberFormatException e) {
                pageI = 1;
            }
            int totalProducts = pdbc.getTotal();
            int totalPage = (totalProducts % pageS) == 0 ? totalProducts / pageS : (totalProducts / pageS) + 1;
            ArrayList<Product> listProducts = pdbc.getAllProducts(pageI, pageS);
            request.setAttribute("pageI", pageI);
            request.setAttribute("totalPage", totalPage);
            ArrayList<Category> listCategorys = new CategoryDBContext().getCategorys();
            request.setAttribute("listCategorys", listCategorys);
            request.setAttribute("listProducts", listProducts);
            request.getRequestDispatcher("view/Manager.jsp").forward(request, response);
        }else{
            response.getWriter().print("<h1>Access Denied!</h1>");
        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
