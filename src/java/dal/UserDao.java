/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class UserDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
     public int getTotalUsers(){
       
         int total = 0;
         String query = "SELECT COUNT(*) \n"
                 + "FROM tbUser\n"
                 + "where role = 2;";
         try {

             conn = new DBContext().getConnection();
             ps = conn.prepareStatement(query);
             rs = ps.executeQuery();
             if (rs.next()) {
                 total = rs.getInt(1);
             }

         } catch (Exception e) {
             System.out.println(e);
         }
         return total;
    }
      public static void main(String[] args) {
        UserDao a  = new UserDao();
      
          System.out.println(""+a.getTotalUsers());
    }
}
