/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDAO;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author hanh
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        CategoryDAO d1 = new CategoryDAO();
        List<Category> list1 = d1.getAllCategorys();
        request.setAttribute("cate", list1);
        DAO d = new DAO();
        Product p = d.getProductById(id);
        request.setAttribute("product", p);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        CategoryDAO d1 = new CategoryDAO();
        List<Category> list1 = d1.getAllCategorys();
        request.setAttribute("cate", list1);
        String name = request.getParameter("name");
        String title = request.getParameter("title");
        String price_raw = request.getParameter("price");
        String quantiy_raw = request.getParameter("quantity");
        String unit = request.getParameter("unit");
        String image = request.getParameter("image");
        String releaseDate_raw = request.getParameter("releaseDate");
        String des = request.getParameter("des");
        String cid_raw = request.getParameter("op");
        String id_raw = request.getParameter("id");
        int quantity = 0;
        int cid = 0, id = 0;
        long price = 0;
        Date releaseDate = null;
        try {
            quantity = Integer.parseInt(quantiy_raw);
            cid = Integer.parseInt(cid_raw);
           price = Long.parseLong(price_raw);
            releaseDate = Date.valueOf(releaseDate_raw);
            id = Integer.parseInt(id_raw);
            Product c = new Product(id, name, title, price, quantity, unit, image, releaseDate, des, cid);
            DAO d = new DAO();
            d.update(c);           
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        out.print(id);
        response.sendRedirect("manager");
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
