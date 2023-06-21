package controller;

import dal.UserDao;
import entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
@WebServlet(name = "UpdateUserInfoControl", urlPatterns = {"/updateuser"})
public class UpdateUserInfoControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDao dao = new UserDao();
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String cmnd = request.getParameter("cmnd");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int idUser = Integer.parseInt(id);
        dao.updateInfor(idUser, name, phone, cmnd, email);
        try {
            request.setAttribute("stt", "Update Success");
            User updatedUser = dao.getUserById(idUser);
            System.out.println(updatedUser.toString());
            request.getSession().setAttribute("acc", updatedUser);
            request.getRequestDispatcher("ChangeInformation.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            request.setAttribute("stt", "Update Failed");
            response.sendRedirect("ChangeInformation.jsp");
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
