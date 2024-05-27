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
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ZT-YRN
 */
@WebServlet(name = "View", urlPatterns = {"/product"})
public class View extends HttpServlet {

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws
            ServletException, IOException{
        System.out.println("DOGET");
        doPost(request, response);
    }
            @Override
           protected void doPost (HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        System.out.println("BEFORE SHOES LIST");
       List<Shoe> shoes = ShoeHandler.getAllShoes();
       System.out.println("AFTER SHOES LiST");
       request.setAttribute("shoeList", shoes);
       System.out.println(shoes.get(0).getName());
        
       request.getRequestDispatcher("shoe-list.jsp").forward(request, response);
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
    
    

