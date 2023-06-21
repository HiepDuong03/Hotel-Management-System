package controller;

import dal.UserDao;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "SignInControl", urlPatterns = {"/signin"})
public class SignInControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String rem = request.getParameter("rem");
        // Tạo cookies: user, pass, email
        Cookie cu = new Cookie("cuser", user);
        Cookie cp = new Cookie("cpass", pass);
        Cookie cr = new Cookie("crem", rem);
        if (rem != null) {
            // Thêm cookie
            cu.setMaxAge(60 * 60 * 24);
            cp.setMaxAge(60 * 60 * 24);
            cr.setMaxAge(60 * 60 * 24);
        } else {
            // Xóa cookie
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        // Add vào browser
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);

        UserDao dao = new UserDao();
        ArrayList<User> list = (ArrayList<User>) dao.getAllUser();
        for (User acc : list) {
            if (acc.getUsername().equals(user)) {
                if (acc.getPassword().equals(pass)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("acc", acc);
//                    session.setMaxInactiveInterval(4000);
                    if(acc.getRole() == 2) response.sendRedirect("home");
                    else response.sendRedirect("listroomad");
                    return;
                } else {
                    request.setAttribute("mess", "Wrong password");
                    request.setAttribute("user", user);
                    request.getRequestDispatcher("SignIn.jsp").forward(request, response);
                }
            }
        }
        request.setAttribute("mess", "Account does not exist");
        request.getRequestDispatcher("SignIn.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
