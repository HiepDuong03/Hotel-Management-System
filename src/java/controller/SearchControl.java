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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "SearchControl", urlPatterns = {"/search"})
public class SearchControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
        String formattedDate = formatter.format(currentDate);
        HttpSession session = request.getSession(true);
        Search search = null;

        Object o = session.getAttribute("search");
        if (o != null) {
            search = (Search) o;
        } else {
            search = new Search();
        }

        String inDate = request.getParameter("indate");
        String outDate = request.getParameter("outdate");
        String cate = request.getParameter("cate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");

        inDate = inDate == null ? search.getInDate() : inDate;
        outDate = outDate == null ? search.getOutDate() : outDate;
        cate = cate == null ? search.getCate() : cate;
        adult = adult == null ? search.getAdult() : adult;
        children = children == null ? search.getChildren() : children;

        System.out.println(adult + " " + children);
        if (("".equals(inDate) && "".equals(outDate))
                || (inDate == null && outDate == null)) {
            inDate = formattedDate;
            outDate = formattedDate;
        } else if ("".equals(inDate)) {
            outDate = outDate.replace('/', '-');
            request.setAttribute("outdate", outDate);
            request.setAttribute("mess", "Please select In Date");
            request.getRequestDispatcher("list").forward(request, response);
            return;
        } else if ("".equals(outDate)) {
            inDate = inDate.replace('/', '-');
            request.setAttribute("indate", inDate);
            request.setAttribute("mess", "Please select Out Date");
            request.getRequestDispatcher("list").forward(request, response);
            return;
        }
        inDate = inDate.replace('/', '-');
        outDate = outDate.replace('/', '-');

        Date a = formatter.parse(inDate);
        Date b = formatter.parse(outDate);
        int compareResult1 = a.compareTo(formatter.parse(formattedDate));
        if (compareResult1 < 0) {
            request.setAttribute("indate", inDate);
            request.setAttribute("outdate", outDate);
            request.setAttribute("mess", "You can only book in the future");
            request.getRequestDispatcher("list").forward(request, response);
            return;
        }
        int compareResult2 = a.compareTo(b);
        if (compareResult2 > 0) {
            request.setAttribute("indate", inDate);
            request.setAttribute("outdate", outDate);
            request.setAttribute("mess", "Invalid Check in and Check out, Please re-enter");
            request.getRequestDispatcher("list").forward(request, response);
            return;
        }

        if (cate == null) {
            cate = "0";
        }
        if (adult == null) {
            adult = "0";
        }
        if (children == null) {
            children = "0";
        }
// add vào section, in lại value
        request.setAttribute("indate", inDate);
        search.setInDate(inDate);
        request.setAttribute("outdate", outDate);
        search.setOutDate(outDate);
        request.setAttribute("cate", cate);
        search.setCate(cate);
        request.setAttribute("adult", adult);
        search.setAdult(adult);
        request.setAttribute("children", children);
        search.setChildren(children);
        session.setAttribute("search", search);
        
        RoomDao dao = new RoomDao();
        String search_indate = inDate + " 12:00:00";
        String search_outdate = outDate + " 11:00:00";
        System.out.println(search_indate + " | " + search_outdate);
        ArrayList<Room> list = (ArrayList<Room>) dao.getSearchRoom(search_indate, search_outdate, cate, adult, children);
        request.setAttribute("list", list);
        request.getRequestDispatcher("Rooms.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SearchControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SearchControl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
