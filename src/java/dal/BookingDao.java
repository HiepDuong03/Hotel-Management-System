package dal;

import context.DBContext;
import entity.Booking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class BookingDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addBooking(int UserId, String RoomId, String inDate, String outDate) {
        try {
            String query = "\"\"\n" +
"                           insert into tbBook values (?,?,1)\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            Date currentDate = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = formatter.format(currentDate);
            ps = conn.prepareStatement(query);
            ps.setInt(1, UserId);
            ps.setString(2, formattedDate);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    select max(b.BookId)\n" +
"                    from tbBook b\"\"";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            rs.next();
            int BookId = rs.getInt(1);

            query = "\"\"\n" +
"                    insert into tbBookDetails(BookId,RoomId,StartDate,EndDate)\n" +
"                    values(?,?,?,?)\"\"";
            ps = conn.prepareStatement(query);
            ps.setInt(1, BookId);
            ps.setString(2, RoomId);
            ps.setString(3, inDate);
            ps.setString(4, outDate);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<Booking> getAllBooking() {
        List<Booking> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                           SELECT b.BookId, u.UserId, u.Name, u.Cmnd, u.SDT, u.Image, b.BookDate, bd.StartDate, bd.EndDate, r.RoomId, r.RoomName, s.StatusId\n" +
"                           FROM tbUser u\n" +
"                           INNER JOIN tbBook b ON u.UserId = b.UserId\n" +
"                           INNER JOIN tbBookDetails bd ON b.BookId = bd.BookId\n" +
"                           INNER JOIN tbStatus s ON b.StatusId = s.StatusId\n" +
"                           INNER JOIN tbRoom r ON bd.RoomId = r.RoomId\n" +
"                           ORDER BY b.BookDate DESC;\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Booking(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getInt(12)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
       public List<Booking> getAllPayment() {
        List<Booking> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                           SELECT b.BookId, u.UserId, u.Name, u.Cmnd, u.SDT, u.Image, b.BookDate, bd.StartDate, bd.EndDate, r.RoomId, r.RoomName, s.StatusId\n" +
"                           FROM tbUser u\n" +
"                           INNER JOIN tbBook b ON u.UserId = b.UserId\n" +
"                           INNER JOIN tbBookDetails bd ON b.BookId = bd.BookId\n" +
"                           INNER JOIN tbStatus s ON b.StatusId = s.StatusId\n" +
"                           INNER JOIN tbRoom r ON bd.RoomId = r.RoomId\n" +
"                           where s.StatusId = 3\n" +
"                           ORDER BY b.BookDate DESC;\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Booking(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getInt(12)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
        public Booking getBookingbyIdRoom(String rid) {
        try {
            String query = "SELECT b.BookId, u.UserId, u.Name, u.Cmnd, u.SDT, u.Image, b.BookDate, bd.StartDate, bd.EndDate, r.RoomId, r.RoomName, s.StatusId\n" +
"                            FROM tbUser u\n" +
"                            INNER JOIN tbBook b ON u.UserId = b.UserId\n" +
"                            INNER JOIN tbBookDetails bd ON b.BookId = bd.BookId and (getdate()>=StartDate and GETDATE()<=EndDate)\n" +
"                            INNER JOIN tbStatus s ON b.StatusId = s.StatusId\n" +
"                            INNER JOIN tbRoom r ON bd.RoomId = r.RoomId\n" +
"                            Where r.RoomId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, rid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Booking(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getInt(12));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
         public void updateStateBooking(String bookid, String status) {
        try {
            String query = "\"\"\n" +
"                           UPDATE tbBook\n" +
"                           SET StatusId = ?\n" +
"                           WHERE BookId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setString(2, bookid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Booking getBookingById(String id) {
        try {
            String query = "\"\"\n" +
"                           SELECT b.BookId, u.UserId, u.Name, u.Cmnd, u.SDT, u.Image, b.BookDate, bd.StartDate, bd.EndDate, r.RoomId, r.RoomName, s.StatusId\n" +
"                           FROM tbUser u\n" +
"                           INNER JOIN tbBook b ON u.UserId = b.UserId\n" +
"                           INNER JOIN tbBookDetails bd ON b.BookId = bd.BookId\n" +
"                           INNER JOIN tbStatus s ON b.StatusId = s.StatusId\n" +
"                           INNER JOIN tbRoom r ON bd.RoomId = r.RoomId\n" +
"                           Where b.BookId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Booking(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getInt(12));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
