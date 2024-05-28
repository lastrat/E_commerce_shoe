/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.ecommerce.resources;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author lastrategie
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();    
        
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        try {
            Connection conn = DB.getConnection();

            String query = "SELECT role,username,email FROM user WHERE email = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, password);

           
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String role = rs.getString("role");
                String username = rs.getString("username");
                String email_add = rs.getString("email");

                if ("admin".equalsIgnoreCase(role)) {
                     HttpSession session = request.getSession(true);
                    session.setAttribute("role", role);
                    session.setAttribute("username", username);
                    session.setAttribute("email", email_add);
                    response.sendRedirect("index.jsp");
                    
                } else {
                    // Redirect to user dashboard
                    HttpSession session = request.getSession(true);
                    session.setAttribute("role", role);
                    session.setAttribute("username", username);
                    session.setAttribute("email", email_add);
                    response.sendRedirect("home.jsp");
                }
            } else {
             
                response.sendRedirect("login.jsp?error=Invalid%20credentials");
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=An%20error%20occurred");
        }
    }
       
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 
 

}
