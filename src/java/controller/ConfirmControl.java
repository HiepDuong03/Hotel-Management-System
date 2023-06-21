package controller;

import dal.RoomDao;
import entity.Room;
import entity.Search;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "ConfirmControl", urlPatterns = {"/confirm"})
public class ConfirmControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("rid");
        RoomDao dao = new RoomDao();
        Room r = dao.getRoomById(id);
        
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-dd");
        String formattedDate = formatter.format(currentDate);
        HttpSession session = request.getSession(true);
        Search search = (Search) session.getAttribute("search");
        double total = dao.getTotalRoomPrice(id, search.getInDate(), search.getOutDate(), formattedDate);
        request.setAttribute("roomName", r.getRoomName());
        request.setAttribute("img", r.getRoomImg());
        request.setAttribute("total", total);
        request.setAttribute("rid", id);
        request.getRequestDispatcher("ConfirmBooking.jsp").forward(request, response);
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
