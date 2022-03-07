package controler;

import dal.AccountDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dal.AccountDBContext AccDBC = new AccountDBContext();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        Account account = AccDBC.getAccount(user, pass);
        if (account != null) {
            String remember = request.getParameter("remember");
            if (remember != null) {
                Cookie c_user = new Cookie("username", user);
                Cookie c_pass = new Cookie("password", pass);
                c_user.setMaxAge(3600 * 24);
                c_pass.setMaxAge(3600 * 24);
                response.addCookie(c_pass);
                response.addCookie(c_user);
            }
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("view/Login.jsp").forward(request, response);
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}