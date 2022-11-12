/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Admin;
import model.Cart;
import model.Customer;
import model.Item;
import model.Product;

/**
 *
 * @author hanh
 */
public class DAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM SanPham";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getTop4Product() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT TOP (4) [IDSanPham]\n"
                + "      ,[Ten]\n"
                + "      ,[Tittle]\n"
                + "      ,[Gia]\n"
                + "      ,[SoLuong]\n"
                + "      ,[DonViTinh]\n"
                + "      ,[Anh]\n"
                + "      ,[NgayMoBan]\n"
                + "      ,[MieuTa]\n"
                + "      ,[IDLoaiSP]\n"
                + "      ,[IDNhaCungCap]\n"
                + "  FROM [MCmobile].[dbo].[SanPham]\n"
                + "  order by NgayMoBan desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int getTotalProduct() {

        String sql = "SELECT count(*) FROM SanPham";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from SanPham \n"
                + "order by NgayMoBan desc\n"
                + "offset ? rows fetch next 8 rows only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 8);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String> getTitle(int cid) {
        List<String> list = new ArrayList<>();
        String sql = "SELECT tittle FROM SanPham\n"
                + "where IDloaiSP = ? \n"
                + "group by IDLoaiSP, tittle";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("tittle"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getAllProductByCid(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM SanPham where IDLoaiSP = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(String id) {

        String sql = "SELECT * FROM SanPham where IDSanPham = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getAllProductByTitle(String title) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM SanPham where tittle = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, title);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from SanPham\n"
                + "where [Ten] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void delete(String id) {
        String sql = "Delete from SanPham where [IDSanPham] =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Product c) {
        String sql = "INSERT INTO [dbo].[SanPham]\n"
                + "           ([Ten]\n"
                + "           ,[Tittle]\n"
                + "           ,[Gia]\n"
                + "           ,[SoLuong]\n"
                + "           ,[DonViTinh]\n"
                + "           ,[Anh]\n"
                + "           ,[NgayMoBan]\n"
                + "           ,[MieuTa]\n"
                + "           ,[IDLoaiSP])\n"
                + "     VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getTitle());
            st.setDouble(3, c.getPrice());
            st.setInt(4, c.getQuantity());
            st.setString(5, c.getUnit());
            st.setString(6, c.getImage());
            st.setDate(7, c.getReleaseDate());
            st.setString(8, c.getDesc());
            st.setInt(9, c.getIdlsp());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Product c) {
        String sql = "UPDATE [dbo].[SanPham]\n"
                + "   SET [Ten] = ?\n"
                + "      ,[Tittle] = ?\n"
                + "      ,[Gia] = ?\n"
                + "      ,[SoLuong] = ?\n"
                + "      ,[DonViTinh] = ?\n"
                + "      ,[Anh] = ?\n"
                + "      ,[NgayMoBan] = ?\n"
                + "      ,[MieuTa] = ?\n"
                + "      ,[IDLoaiSP] = ?\n"
                + "      \n"
                + " WHERE  [IDSanPham] =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getTitle());
            st.setDouble(3, c.getPrice());
            st.setInt(4, c.getQuantity());
            st.setString(5, c.getUnit());
            st.setString(6, c.getImage());
            st.setDate(7, c.getReleaseDate());
            st.setString(8, c.getDesc());
            st.setInt(9, c.getIdlsp());
            st.setInt(10, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Admin check(String username, String password) {
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "  FROM [dbo].[Admin]\n"
                + "  where [username] = ? and  [password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Admin a = new Admin(rs.getString("username"), rs.getString("password"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public static void main(String[] args) {
        DAO d = new DAO();
        Cart cart = new Cart("4:1/3:1", d.getAllProduct());
        Customer c = new Customer();
        c.setId(123);
        c.setName("hanh");
        c.setPhone("038");
        c.setAddress("tha");
        c.setNote("no");
        d.insert(c);
        Customer c1 = d.checkC();
        d.addOrder(c1, cart);
        System.out.println(c1.getId());

    }

    public List<Product> search(String name, String desc, double price, String op) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from SanPham where 1=1 ";
        if (name != null && !name.equals("")) {
            sql += " and [Ten] like '%" + name + "%'";
        }
        if (desc != null && !desc.equals("")) {
            sql += " and [MieuTa] like '%" + desc + "%'";
        }
        if (price > 0) {
            if (price == 1) {
                sql += " and [Gia]*2 <= 1000000";
            }
            if (price == 2) {
                sql += " and [Gia]*2 <= 5000000  and [Gia]*2 >= 1000000";
            }
            if (price == 3) {
                sql += " and [Gia]*2 <= 10000000 and [Gia]*2 >= 5000000";
            }
            if (price == 4) {
                sql += " and [Gia]*2 >=10000000";
            }
        }
        if (!op.equals("0") && !op.equals("")) {
            sql += " and [Tittle] like '" + op + "'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("IDSanPham"));
                c.setName(rs.getString("Ten"));
                c.setTitle(rs.getString("tittle"));
                c.setPrice(rs.getLong("Gia"));
                c.setQuantity(rs.getInt("SoLuong"));
                c.setUnit(rs.getString("DonViTinh"));
                c.setImage(rs.getString("Anh"));
                c.setReleaseDate(rs.getDate("NgayMoBan"));
                c.setDesc(rs.getString("MieuTa"));
                c.setIdlsp(rs.getInt("IDLoaiSP"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insert(Customer c) {
        String sql = "INSERT INTO [dbo].[KhachHang]\n"
                + "           ([TenkhachHang]\n"
                + "           ,[DiaChi]\n"
                + "           ,[SDT]\n"
                + "           ,[GhiChu])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getAddress());
            st.setString(3, c.getPhone());
            st.setString(4, c.getNote());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public Customer checkC() {
        String sql = "SELECT TOP (1) [IDKhachHang]\n" +
"      ,[TenkhachHang]\n" +
"      ,[DiaChi]\n" +
"      ,[SDT]\n" +
"      ,[GhiChu]\n" +
"  FROM [MCmobile].[dbo].[KhachHang]\n" +
"  order by IDKhachHang desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
           
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Customer a = new Customer(rs.getInt("IDKhachHang"), rs.getString("TenkhachHang"), rs.getString("DiaChi"), rs.getString("SDT"), rs.getString("GhiChu"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void addOrder(Customer c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            String sql = "INSERT INTO [dbo].[HoaDon]\n"
                    + "           ([Ngay]\n"
                    + "           ,[IDKhachHang]\n"
                    + "           ,[TongTien])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setDate(1, Date.valueOf(curDate));
            st.setInt(2, c.getId());
            st.setLong(3, cart.getTotalMoney());
            st.executeUpdate();
            // lấy id của order vua add
            String sql1 = "select  top 1 [IDHoaDon] from HoaDon order by [IDHoaDon] desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add bang HoaDonChiTiet 
            if (rs.next()) {
                int oid = rs.getInt("IDHoaDon");
                for (Item i : cart.getItem()) {
                    String sql2 = "INSERT INTO [dbo].[HoaDonChiTiet]\n"
                            + "           ([IDHoaDon]\n"
                            + "           ,[IDSanPham]\n"
                            + "           ,[SoLuong]\n"
                            + "           ,[Gia])\n"
                            + "     VALUES\n"
                            + "           (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setLong(4, i.getPrice());
                    st2.executeUpdate();

                }
            }
            String sql3 = "UPDATE [dbo].[SanPham]\n"
                    + "   SET [SoLuong] = SoLuong - ? \n"
                    + "      \n"
                    + " WHERE [IDSanPham] = ?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItem()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }

        } catch (SQLException e) {

        }
    }

    public void addOrder1() {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            String sql = "INSERT INTO [dbo].[HoaDon]\n" +
"           ([IDKhachHang]\n" +
"           ,[TongTien]) values(?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
         //   st.setDate(1, Date.valueOf(curDate));
            st.setInt(1, 22);
            st.setLong(2, 1233343);
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }
}
