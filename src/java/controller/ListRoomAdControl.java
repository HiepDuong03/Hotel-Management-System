package controller;

import dal.RoomDao;
import entity.Room;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ListRoomAdControl", urlPatterns = {"/listroomad"})
public class ListRoomAdControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-dd 12:00:00");
        String formattedDate = formatter.format(currentDate);
        
        RoomDao dao = new RoomDao();
        ArrayList<Room> list = (ArrayList<Room>)dao.getAllRoom();
        ArrayList<Room> listAvailble = (ArrayList<Room>)dao.getAvailableRoom(formattedDate, formattedDate, "0", "0", "0");
        ArrayList<Room> listBooked = (ArrayList<Room>)dao.getBookedRoom(formattedDate, formattedDate, "0", "0", "0");
        ArrayList<Room> listOccupied = (ArrayList<Room>)dao.getOccupiedRoom("0", "0", "0");
        request.setAttribute("list", list);
        request.setAttribute("listAvailble", listAvailble);
        request.setAttribute("listBooked", listBooked);
        request.setAttribute("listOccupied", listOccupied);
        request.getRequestDispatcher("RoomsAd.jsp").forward(request, response);
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
