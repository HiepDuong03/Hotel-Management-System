package dal;

import context.DBContext;
import entity.Product;
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
public class ProductDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(String date) {
        List<Product> list = new ArrayList<>();
        try {
            String query = "\"\"\n" +
"                           select p.ProductId, p.ProductName, p.Image, pp.PurchasePrice, pp.SalePrice\n" +
"                           from tbProduct p, tbProductPrice pp\n" +
"                           where p.ProductId = pp.ProductId and ((? >= pp.StartDate and ? <= pp.EndDate) or\n" +
"                           (? >= pp.StartDate and pp.EndDate is null)) and p.ProductStatus = 1\n" +
"                           ORDER BY p.ProductId ASC;\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, date);
            ps.setString(3, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(String id, String date) {
        try {
            String query = "\"\"\n" +
"                           select p.ProductId, p.ProductName, p.Image, pp.PurchasePrice, pp.SalePrice\n" +
"                           from tbProduct p, tbProductPrice pp\n" +
"                           where p.ProductId = pp.ProductId and ((? >= pp.StartDate and ? <= pp.EndDate) or\n" +
"                           (? >= pp.StartDate and pp.EndDate is null)) and p.ProductId = ? and p.ProductStatus = 1\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, date);
            ps.setString(3, date);
            ps.setString(4, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateProductById(String pid, String name, String image, String purchase, String sale) {
        try {
            String query = "\"\"\n" +
"                           update tbProduct\n" +
"                           set ProductName = ?, Image = ?\n" +
"                           where ProductId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            Date currentDate = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = formatter.format(currentDate);

            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, pid);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    update tbProductPrice\n" +
"                    set EndDate = ?\n" +
"                    where ProductId = ? and EndDate is null\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setString(1, formattedDate);
            ps.setString(2, pid);
            ps.executeUpdate();
            query = "\"\"\n" +
"                    insert into tbProductPrice([ProductId],[PurchasePrice],[SalePrice],[StartDate]) values (?,?,?,?)\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.setString(2, purchase);
            ps.setString(3, sale);
            ps.setString(4, formattedDate);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(String pid) {
        try {
            String query = "\"\"\n" +
"                           update tbProduct\n" +
"                           set ProductStatus = 0\n" +
"                           where ProductId = ?\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addNewProduct(String name, String image, String purchase, String sale) {
        try {
            String query = "\"\"\n" +
"                           insert into tbProduct values(?,?,1)\n" +
"                           \"\"";
            conn = new DBContext().getConnection();
            Date currentDate = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedDate = formatter.format(currentDate);

            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.executeUpdate();

            query = "\"\"\n" +
"                    select max(ProductId)\n" +
"                    from tbProduct\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            rs.next();
            int ProductId = rs.getInt(1);

            query = "\"\"\n" +
"                    insert tbProductPrice([ProductId],[PurchasePrice],[SalePrice],[StartDate]) values (?,?,?,?)\n" +
"                    \"\"";
            ps = conn.prepareStatement(query);
            ps.setInt(1, ProductId);
            ps.setString(2, purchase);
            ps.setString(3, sale);
            ps.setString(4, formattedDate);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
