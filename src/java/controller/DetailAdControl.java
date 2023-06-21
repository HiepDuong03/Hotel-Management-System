package controller;

import dal.ProductDao;
import dal.RoomDao;
import dal.UserDao;
import entity.MyRoom;
import entity.Product;
import entity.Room;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "DetailAdControl", urlPatterns = {"/detailad"})
public class DetailAdControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("rid");
        String status = request.getParameter("status");
        RoomDao dao = new RoomDao();
        ProductDao pdao = new ProductDao();
        Room r1= dao.getRoomById(id);
        MyRoom r2 = dao.getMyRoomById(id);
        if(!status.equals("3")){
            UserDao udao = new UserDao();
            User u = udao.getUserById(r2.getUserId());
            request.setAttribute("user", u);
            System.out.println(u.toString());
        }
        
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
        String formattedDate = formatter.format(currentDate);
        
        ArrayList<String> list = (ArrayList<String>)dao.getAllImgById(id);
        ArrayList<Product> listp = (ArrayList<Product>)pdao.getAllProduct(formattedDate);
        request.setAttribute("list", list);
        request.setAttribute("listp", listp);
        request.setAttribute("detail1", r1);
        request.setAttribute("detail2", r2);
        request.setAttribute("status", status);
        request.getRequestDispatcher("DetailRoomAd.jsp").forward(request, response);
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
