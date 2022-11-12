/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author hanh
 */
public class CategoryDAO extends DBContext{
    public List<Category> getAllCategorys() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM LoaiSanPham";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("IDLoaiSP"));
                c.setName(rs.getString("TenLoaiSP"));
                c.setDesc(rs.getString("MieuTa"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }        
    public static void main(String[] args) {
        CategoryDAO d=new CategoryDAO();
        List<Category> list=d.getAllCategorys();
        System.out.println(list);
    }
          
}
