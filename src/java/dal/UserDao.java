package dal;

import context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String query = "\"\"\n" +
"                       select *\n" +
"                       from tbUser\"\"";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getAllCustomer() {
        List<User> list = new ArrayList<>();
        String query = "\"\"\n" +
"                       select *\n" +
"                       from tbUser\n" +
"                       where Role = 2 and UserStatus = 1\"\"";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void addUser(String user, String email, String pass) {
        String query = "insert tbUser(Username,Password,Email,Role,UserStatus) "
                + "values(?,?,?,2,1)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateInfor(int id, String name, String phone, String cmnd, String email) {
        String sql = "UPDATE tbUser SET [Name] = ?, [SDT] = ?,[Cmnd]=?, [Email] = ? WHERE [UserId] = ?";
        try {
            conn = new DBContext().getConnection(); //mo ketnoi voi sql 
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, cmnd);
            ps.setString(4, email);
            ps.setInt(5, id);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public User getUserById(int id) {
        String sql = "SELECT * FROM [dbo].[tbUser] WHERE [UserId] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void deleteUserById(String id) {
        String sql = "\"\"\n" +
"                     update tbUser\n" +
"                     set UserStatus = 0\n" +
"                     where UserId = ?\"\"";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUser(String id, String name, String phone, String cmnd, String email, String pass) {
        String sql = "\"\"\n" +
"                     update tbUser\n" +
"                     set [Name] = ?, [Password] = ?, [Cmnd] = ?, [SDT] = ?, [Email] =?\n" +
"                     where UserId = ?\"\"";
        try {
            conn = new DBContext().getConnection(); //mo ketnoi voi sql 
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, cmnd);
            ps.setString(4, phone);
            ps.setString(5, email);
            ps.setString(6, id);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
