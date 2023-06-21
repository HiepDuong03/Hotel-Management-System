package dal;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
"                           (? >= pp.StartDate and pp.EndDate is null))\n" +
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
}
