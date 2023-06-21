package controller;

import dal.BookingDao;
import entity.Search;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "BookingControl", urlPatterns = {"/booking"})
public class BookingControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("rid");
        HttpSession session = request.getSession(true);
        Search search = (Search) session.getAttribute("search");
        User user = (User) session.getAttribute("acc");
        String[] arr_indate = search.getInDate().split("-");
        String[] arr_outdate = search.getOutDate().split("-");
        String indate = arr_indate[2] + "-" + arr_indate[0] + "-" + arr_indate[1] + " 12:00:00";
        String outdate = arr_outdate[2] + "-" + arr_outdate[0] + "-" + arr_outdate[1] + " 11:00:00";
        System.out.println(indate + " | " + outdate);
        
        BookingDao dao = new BookingDao();
        dao.addBooking(user.getUserId(), id, indate, outdate);
        response.sendRedirect("home");
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
