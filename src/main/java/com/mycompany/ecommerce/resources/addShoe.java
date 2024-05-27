/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.ecommerce.resources;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author lastrategie
 */
@WebServlet(name = "addShoe", urlPatterns = {"/addshoe"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024* 10,
        maxRequestSize = 1024 * 1024 * 50)
public class addShoe extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addShoe</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addShoe at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        processRequest(request, response);
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
        
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        Part part = request.getPart("image");
        String desc = request.getParameter("description");
        String imageFileName = part.getSubmittedFileName();
        String savepath = "C:/Users/UltraBook 3.1/Documents/NetBeansProjects/Ecommerce/src/main/webapp/assets/images/" + imageFileName;

        try{
           FileOutputStream fos =  new FileOutputStream(savepath);
            InputStream is = part.getInputStream();
            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close(); 
        }catch(Exception e){
            e.printStackTrace();
        }
        
        try{
            Connection con = DB.getConnection();
            PreparedStatement stmt = con.prepareStatement("INSERT INTO product(product_name,description,price,image,category_id) VALUES(?,?,?,?,?)");
            stmt.setString(1, name);
            stmt.setString(2, desc);
            stmt.setString(3, price);
            stmt.setString(4, imageFileName);
            stmt.setInt(5, 1);
            
            int status = stmt.executeUpdate();
              if(status > 0){
                   response.sendRedirect("product");
            }else{
                out.print("<h2>An error occurs</h2>");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
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
