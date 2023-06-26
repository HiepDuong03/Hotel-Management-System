package dal;

import context.DBContext;
import entity.MyRoom;
import entity.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
public class RoomDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Room> getBookedRoom(String inDate, String outDate, String cate, String adult, String children) {
        List<Room> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                           SELECT DISTINCT r.RoomId, r.RoomName, r.RoomBed, c.CateId, p.RoomPrice, r.RoomImg,r.RoomVideo,\n" +
"                                           r.RoomSize, r.RoomView, r.RoomMax, r.RoomStar, r.RoomDes, bo.StatusId\n" +
"                           FROM tbRoom r\n" +
"                           INNER JOIN tbCate c ON r.CateId = c.CateId and c.CateId = ?\n" +
"                           INNER JOIN tbRoomPrice p ON r.RoomId = p.RoomId and (GETDATE() >= p.StartDate and (GETDATE() <= p.EndDate or p.EndDate is null))\n" +
"                           LEFT JOIN (tbBookDetails b INNER JOIN tbBook bo On b.BookId = bo.BookId and bo.StatusId!=4) ON r.RoomId = b.RoomId\n" +
"                           WHERE r.RoomMax >= ? and (bo.StatusId = 1 and \n" +
"                           (((? <= b.EndDate)and(? >= b.StartDate)) or \n" +
"                           ((? <= b.EndDate)and(? >= b.StartDate)) or\n" +
"                           ((? <= b.StartDate)and(? >= b.EndDate))) or (bo.StatusId = 2 and ? > b.StartDate\n" +
"                           and ? <= b.EndDate and ? > GETDATE())) and r.RoomStatus = 1\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            int x = Integer.parseInt(adult) + (Integer.parseInt(children) + 1) / 2, a, b;
            int numberCate = Integer.parseInt(cate);
            if (numberCate != 0) {
                a = numberCate;
                b = numberCate;
            } else {
                String query2 = "\"\"\n" +
"                                select count (CateId)\n" +
"                                from tbCate\"\"";
                ps = conn.prepareStatement(query2);
                rs = ps.executeQuery();
                rs.next();
                a = 1;
                b = rs.getInt(1);
            }
            ps = conn.prepareStatement(query);
            ps.setInt(2, x);
            ps.setString(3, inDate);
            ps.setString(4, inDate);
            ps.setString(5, outDate);
            ps.setString(6, outDate);
            ps.setString(7, inDate);
            ps.setString(8, outDate);
            ps.setString(9, inDate);
            ps.setString(10, inDate);
            ps.setString(11, inDate);
            for (int i = a; i <= b; i++) {
                ps.setInt(1, i);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Room(rs.getInt(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getDouble(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getDouble(8),
                            rs.getString(9),
                            rs.getInt(10),
                            rs.getInt(11),
                            rs.getString(12),
                            1));
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Room> getOccupiedRoom(String cate, String adult, String children) {
        List<Room> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                           SELECT DISTINCT r.RoomId, r.RoomName, r.RoomBed, c.CateId, p.RoomPrice, r.RoomImg,r.RoomVideo,\n" +
"                                           r.RoomSize, r.RoomView, r.RoomMax, r.RoomStar, r.RoomDes\n" +
"                           FROM tbRoom r\n" +
"                           INNER JOIN tbCate c ON r.CateId = c.CateId and c.CateId = ?\n" +
"                           INNER JOIN tbRoomPrice p ON r.RoomId = p.RoomId and (GETDATE() >= p.StartDate and (GETDATE() <= p.EndDate or p.EndDate is null))\n" +
"                           LEFT JOIN (tbBookDetails b INNER JOIN tbBook bo On b.BookId = bo.BookId and bo.StatusId!=4) ON r.RoomId = b.RoomId\n" +
"                           WHERE r.RoomMax >= ? and bo.StatusId = 2 and r.RoomStatus = 1\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            int x = Integer.parseInt(adult) + (Integer.parseInt(children) + 1) / 2, a, b;
            int numberCate = Integer.parseInt(cate);
            if (numberCate != 0) {
                a = numberCate;
                b = numberCate;
            } else {
                String query2 = "\"\"\n" +
"                                select count (CateId)\n" +
"                                from tbCate\"\"";
                ps = conn.prepareStatement(query2);
                rs = ps.executeQuery();
                rs.next();
                a = 1;
                b = rs.getInt(1);
            }
            ps = conn.prepareStatement(query);
            ps.setInt(2, x);
            for (int i = a; i <= b; i++) {
                ps.setInt(1, i);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Room(rs.getInt(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getDouble(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getDouble(8),
                            rs.getString(9),
                            rs.getInt(10),
                            rs.getInt(11),
                            rs.getString(11),
                            2));
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Room> getAvailableRoom(String inDate, String outDate, String cate, String adult, String children) {
        List<Room> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                    SELECT DISTINCT r.RoomId, r.RoomName, r.RoomBed, c.CateId, p.RoomPrice, r.RoomImg, r.RoomVideo,\n" +
"                    r.RoomSize, r.RoomView, r.RoomMax, r.RoomStar, r.RoomDes\n" +
"                    FROM tbRoom r\n" +
"                    INNER JOIN tbCate c ON r.CateId = c.CateId AND c.CateId = ?\n" +
"                    INNER JOIN tbRoomPrice p ON r.RoomId = p.RoomId AND (GETDATE() <= p.EndDate OR p.EndDate IS NULL)\n" +
"                    LEFT JOIN tbBookDetails b ON r.RoomId = b.RoomId\n" +
"                    WHERE r.RoomMax >= ? and r.RoomStatus = 1 \n" +
"                    AND ((NOT EXISTS (\n" +
"                    SELECT 1\n" +
"                    FROM tbBookDetails bd\n" +
"                    INNER JOIN tbBook b ON b.BookId = bd.BookId\n" +
"                    WHERE bd.RoomId = r.RoomId AND b.StatusId != 4\n" +
"                    ))\n" +
"                    OR (\n" +
"                    NOT EXISTS (\n" +
"                    SELECT 1\n" +
"                    FROM tbBookDetails bd\n" +
"                    WHERE bd.RoomId = r.RoomId\n" +
"                    AND ((? BETWEEN bd.StartDate AND bd.EndDate)\n" +
"                    OR (? BETWEEN bd.StartDate AND bd.EndDate)))))\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            int x = Integer.parseInt(adult) + (Integer.parseInt(children) + 1) / 2, a, b;
            int numberCate = Integer.parseInt(cate);
            if (numberCate != 0) {
                a = numberCate;
                b = numberCate;
            } else {
                String query2 = "\"\"\n" +
"                                select count (CateId)\n" +
"                                from tbCate\"";
                ps = conn.prepareStatement(query2);
                rs = ps.executeQuery();
                rs.next();
                a = 1;
                b = rs.getInt(1);
            }
            ps = conn.prepareStatement(query);
            ps.setString(3, inDate);
            ps.setString(4, outDate);
            ps.setInt(2, x);
            for (int i = a; i <= b; i++) {
                ps.setInt(1, i);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Room(rs.getInt(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getDouble(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getDouble(8),
                            rs.getString(9),
                            rs.getInt(10),
                            rs.getInt(11),
                            rs.getString(12),
                            3));
                }
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Room> getAllRoom() {
        List<Room> list = new ArrayList<>();
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-dd 12:00:00");
        String formattedDate = formatter.format(currentDate);

        list.addAll(getAvailableRoom(formattedDate, formattedDate, "0", "0", "0"));
        list.addAll(getBookedRoom(formattedDate, formattedDate, "0", "0", "0"));
        list.addAll(getOccupiedRoom("0", "0", "0"));
        return list;
    }

    public List<Room> getSearchRoom(String inDate, String outDate, String cate, String adult, String children) {
        List<Room> list = new ArrayList<>();
        Date currentDate = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
        String formattedDate = formatter.format(currentDate);

        list.addAll(getAvailableRoom(inDate, outDate, cate, adult, children));
        list.addAll(getBookedRoom(inDate, outDate, cate, adult, children));
        System.out.println(inDate + " - " + formattedDate);
        if (inDate.equals(formattedDate)) {
            list.addAll(getOccupiedRoom(cate, adult, children));
        }
        return list;
    }

    public Room getRoomById(String id) {
        try {
            String query = "\"\"\n" +
"                    SELECT DISTINCT r.RoomId, r.RoomName, r.RoomBed, c.CateId, p.RoomPrice, r.RoomImg,r.RoomVideo,\n" +
"                                    r.RoomSize, r.RoomView, r.RoomMax, r.RoomStar, r.RoomDes, bo.StatusId\n" +
"                    FROM tbRoom r\n" +
"                    INNER JOIN tbCate c ON r.CateId = c.CateId \n" +
"                    INNER JOIN tbRoomPrice p ON r.RoomId = p.RoomId and (GETDATE() >= p.StartDate and (GETDATE() <= p.EndDate or p.EndDate is null))\n" +
"                    LEFT JOIN (tbBookDetails b INNER JOIN tbBook bo On b.BookId = bo.BookId) ON r.RoomId = b.RoomId\n" +
"                    WHERE r.RoomId = ?\"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<String> getAllImgById(String id) {
        List<String> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                    select i.Image\n" +
"                    from tbRoom r, tbImg i\n" +
"                    where r.RoomId = i.RoomId and i.RoomId = ?\"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Room> get6Room() {
        List<Room> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                    SELECT DISTINCT top 1 r.RoomId, r.RoomName,p.RoomPrice, r.RoomImg\n" +
"                    FROM tbRoom r\n" +
"                    INNER JOIN tbCate c ON r.CateId = c.CateId and c.CateId = ?\n" +
"                    INNER JOIN tbRoomPrice p ON r.RoomId = p.RoomId and (GETDATE() >= p.StartDate and (GETDATE() <= p.EndDate or p.EndDate is null))\n" +
"                    LEFT JOIN (tbBookDetails b INNER JOIN tbBook bo On b.BookId = bo.BookId) ON r.RoomId = b.RoomId\n" +
"                    where r.RoomStatus != 0   \n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            int a, b;
            String query2 = "\"\"\n" +
"                                select count (CateId)\n" +
"                                from tbCate\"\"";
            ps = conn.prepareStatement(query2);
            rs = ps.executeQuery();
            rs.next();
            a = 1;
            b = rs.getInt(1);
            if (b > 6) {
                b = 6;
            }
            ps = conn.prepareStatement(query);
            for (int i = a; i <= b; i++) {
                ps.setInt(1, i);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Room(rs.getInt(1),
                            rs.getString(2),
                            rs.getDouble(3),
                            rs.getString(4), 1
                    ));
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public double getTotalRoomPrice(String id, String inDate, String outDate, String bookDate) {
        try {
            String query = "\"\"\n" +
"                    SELECT SUM(p.RoomPrice)*DATEDIFF(day, ?, ?) as TotalPrice\n" +
"                    FROM tbRoomPrice p\n" +
"                    JOIN tbRoom r ON r.RoomId = p.RoomId\n" +
"                    WHERE r.RoomId = ? and (? > p.StartDate and (? < p.EndDate or p.EndDate is null))\n" +
"                    \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, inDate);
            ps.setString(2, outDate);
            ps.setString(3, id);
            ps.setString(4, bookDate);
            ps.setString(5, bookDate);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<MyRoom> getMyRoomByUserId(String id) {
        List<MyRoom> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                    SELECT r.RoomId, r.RoomName, r.RoomBed, r.RoomImg, r.RoomSize, r.RoomView, r.RoomMax,\n" +
"                    FORMAT(b.BookDate, 'MM-dd-yyyy hh:mm:ss'), FORMAT(db.StartDate, 'MM-dd-yyyy hh:mm:ss'),\n" +
"                           FORMAT(db.EndDate, 'MM-dd-yyyy hh:mm:ss'),SUM(p.RoomPrice*DATEDIFF(day, db.StartDate, db.EndDate)) as TotalPrice\n" +
"                    FROM tbBook b\n" +
"                    JOIN tbBookDetails db ON b.BookId = db.BookId\n" +
"                    JOIN tbRoom r ON db.RoomId = r.RoomId\n" +
"                    JOIN tbUser u ON b.UserId = u.UserId\n" +
"                    JOIN tbRoomPrice p ON p.RoomId = r.RoomId\n" +
"                    WHERE u.UserId = ? AND b.StatusId = 1 AND r.RoomStatus != 0 and\n" +
"                    (b.BookDate > p.StartDate AND (b.BookDate < p.EndDate OR p.EndDate IS NULL))\n" +
"                    GROUP BY r.RoomId, r.RoomName, r.RoomBed, r.RoomImg, r.RoomSize, r.RoomView, r.RoomMax,\n" +
"                    b.BookDate, db.StartDate, db.EndDate\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MyRoom(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getDouble(11)
                ));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public MyRoom getMyRoomById(String id) {
        try {
            String query = "\"\"\n" +
"                    select r.RoomId, r.RoomName, r.RoomBed, r.RoomImg, r.RoomSize, r.RoomView, r.RoomMax,p.RoomPrice,\n" +
"                    b.BookDate, FORMAT(db.StartDate, 'MM-dd-yyyy'), FORMAT(db.EndDate, 'MM-dd-yyyy'), u.UserId\n" +
"                    from tbBook b\n" +
"                    JOIN tbBookDetails db ON b.BookId = db.BookId\n" +
"                    JOIN tbUser u ON b.UserId = u.UserId\n" +
"                    JOIN tbRoom r ON db.RoomId = r.RoomId\n" +
"                    JOIN tbRoomPrice p ON p.RoomId = r.RoomId\n" +
"                    where r.RoomId = ? and (b.BookDate > p.StartDate AND (b.BookDate < p.EndDate OR p.EndDate IS NULL))\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new MyRoom(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12)
                );
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
  public int getTotalRoom(){
           int total = 0;
        String query = "SELECT COUNT(*) \n" +
"FROM tbRoom;";
        try{
          
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery(); 
            if(rs.next()){
                total = rs.getInt(1);
            }
            
        }catch (Exception e) {
            System.out.println(e);
        }
        return total;
    }
    public void addNewRoom(String name, String bed, String cate, String image, String video,
            String size, String view, String max, String star, String des, String price) {
        try {
            String query = "\"\"\n" +
"                           insert into tbRoom values(?,?,?,?,?,?,?,?,?,?,1)\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            Date currentDate = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = formatter.format(currentDate);

            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, bed);
            ps.setString(3, cate);
            ps.setString(4, image);
            ps.setString(5, video);
            ps.setString(6, size);
            ps.setString(7, view);
            ps.setString(8, max);
            ps.setString(9, star);
            ps.setString(10, des);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    select max(RoomId)\n" +
"                    from tbRoom\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            rs.next();
            int RoomId = rs.getInt(1);

            query = "\"\"\n" +
"                    insert into tbRoomPrice ([RoomId],[RoomPrice],[StartDate]) values (?,?,?)\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setInt(1, RoomId);
            ps.setString(2, price);
            ps.setString(3, formattedDate);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    insert into tbImg values (?,?)\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setInt(1, RoomId);
            ps.setString(2, image);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteNewRoom(String roomid) {
        try {
            String query = "\"\"\n" +
"                           update tbRoom\n" +
"                           set RoomStatus = 0\n" +
"                           where RoomId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, roomid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateRoom(String id, String name, String bed, String cate, String image, String video,
            String size, String view, String max, String star, String des, String price) {
        try {
            String query = "\"\"\n" +
"                           update tbRoom \n" +
"                           set RoomName = ?, RoomDes = ?, RoomBed =?, RoomSize=?, RoomMax=?, RoomVideo=?,\n" +
"                           RoomStar=?, RoomView=?,CateId=?, RoomImg=?\n" +
"                           where RoomId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            Date currentDate = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = formatter.format(currentDate);

            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.setString(3, bed);
            ps.setString(4, size);
            ps.setString(5, max);
            ps.setString(6, video);
            ps.setString(7, star);
            ps.setString(8, view);
            ps.setString(9, cate);
            ps.setString(10, image);
            ps.setString(11, id);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    update tbRoomPrice\n" +
"                    set EndDate = ?\n" +
"                    where RoomId = ? and EndDate is null\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setString(1, formattedDate);
            ps.setString(2, id);
            ps.executeUpdate();
            System.out.println("id: " + id);
            query = "\"\"\n" +
"                    insert into tbRoomPrice([RoomId],[RoomPrice],[StartDate]) values(?,?,?)\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, price);
            ps.setString(3, formattedDate);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
