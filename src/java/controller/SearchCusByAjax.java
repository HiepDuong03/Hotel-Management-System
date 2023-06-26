package controller;

import dal.UserDao;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
@WebServlet(name = "SearchCusByAjax", urlPatterns = {"/searchajax"})
public class SearchCusByAjax extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        UserDao dao = new UserDao();
        ArrayList<User> list = (ArrayList<User>) dao.getCusByAjax(txtSearch);
        PrintWriter out = response.getWriter();
        for (User r : list) {
            out.print("<tr>\n" +
"                                        <td>"+r.getUserId()+"</td>\n" +
"                                        <td>"+r.getName()+"</td>\n" +
"                                        <td>"+r.getEmail()+"</td>\n" +
"                                        <td>"+r.getSdt()+"</td>\n" +
"                                        <td>"+r.getCmnd()+"</td>\n" +
"                                        <td><button onclick=\"window.location.href = 'confirm?uid="+r.getUserId()+"';\" class=\"btn btn-outline-info\" type=\"submit\">BOOKING</button></td>\n" +
"                                    </tr>");
        }
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
