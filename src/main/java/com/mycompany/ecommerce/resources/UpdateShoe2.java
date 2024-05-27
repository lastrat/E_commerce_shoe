/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.ecommerce.resources;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
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

/**
 *
 * @author ZT-YRN
 */
@WebServlet(name = "UpdateShoe2", urlPatterns = {"/update2"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024* 10,
        maxRequestSize = 1024 * 1024 * 50)
public class UpdateShoe2 extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String sid = request.getParameter ("id");
        int id = Integer.parseInt (sid);
        String name = request.getParameter("name");
        String priceString = request.getParameter("price");
        String description = request.getParameter("description");
        Part part = request.getPart("image");
        String imageFileName = part.getSubmittedFileName();
        int price = Integer.parseInt(priceString);
        
        Shoe e = new Shoe();
        e.setId(id);
        e.setName(name);
        e.setPrice(price);
        e.setDescription(description);
        String savepath = "C:/Users/UltraBook 3.1/Documents/NetBeansProjects/Ecommerce/src/main/webapp/assets/images/" + imageFileName;

        try{
           FileOutputStream fos =  new FileOutputStream(savepath);
            InputStream is = part.getInputStream();
            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close(); 
        }catch(Exception f){
            f.printStackTrace();
        }
        
        e.setImage(imageFileName);
        int status = ShoeHandler.update(e);
        
        
        
        if(status > 0){
            response.sendRedirect("product");
        }
        else{
            out.println("Sorry! Unable to update record");
        }
        out.close();
    }
  
}
