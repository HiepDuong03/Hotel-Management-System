package dal;

import context.DBContext;
import entity.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
public class RoomDao extends DBContext{
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Room> getAllRoom(){
        List<Room> list = new ArrayList<>();
        int number;
        String query = "select count (RoomId)\n" +
                        "from tbRoom";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery(); 
            rs.next(); number = rs.getInt(1);
            query = "select top 1 r.RoomId, r.RoomName, r.RoomBed, c.CateId,p.RoomPrice,i.Image, r.RoomSize, r.RoomView,r.RoomMax, r.RoomStar, r.RoomDes\n" +
                    "from tbRoom r, tbImg i, tbCate c, tbRoomPrice p\n" +
                    "where r.CateId=c.CateId and r.RoomId=p.RoomId and r.RoomId = i.RoomId and r.RoomId = ?";
            for(int i=1; i<=number; i++){
                ps = conn.prepareStatement(query);
                ps.setInt(1, i);
                rs = ps.executeQuery();
                rs.next();
                list.add(new Room(rs.getInt(1),
                rs.getString(2),
                rs.getInt(3),
                rs.getInt(4),
                rs.getDouble(5),
                rs.getString(6),
                rs.getDouble(7),
                rs.getString(8),
                rs.getInt(9),
                rs.getInt(10),
                rs.getString(11)));
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
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
    
    
    public static void main(String[] args) {
        RoomDao a  = new RoomDao();
        ArrayList<Room> newRoom = (ArrayList<Room>)a.getAllRoom();
        for(Room x : newRoom){
            System.out.println(x.toString());
        }
System.out.println(""+a.getTotalRoom());

    }
}
