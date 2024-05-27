/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecommerce.resources;

import java.util.*;
import java.sql.*;
/**
 *
 * @author ZT-YRN
 */
public class ShoeHandler {
    public static Connection getConnection ()
    {
        Connection con = null;
        try
        {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            con =DriverManager.getConnection ("jdbc:mysql://localhost/e-commerce?autoReconnect=true&useSSL=false","root","");
        } 
        catch (Exception e)
        {
            System.out.println (e);
        }
        return con;
    }
    
    
      public static List <Shoe> getAllShoes()
    {
        List<Shoe> list = new ArrayList<>();
        try
        {
            Connection con = getConnection ();
            PreparedStatement ps = con.prepareStatement ("select id,product_name,price,image from product");
            ResultSet rs = ps.executeQuery ();
            while (rs.next ())
         {
             Shoe e = new Shoe ();
             e.setId (rs.getInt (1));
             e.setName (rs.getString (2));
             e.setPrice(rs.getInt (3));
             e.setImage(rs.getString(4));
             //System.out.println(rs.getString (4));
             list.add (e);
         }
            con.close ();
        }
        catch (Exception e)
        {
            e.printStackTrace ();
        }
        return list;
    }
      
     public static int update(Shoe e){
         int status =0;
         try{
             Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("update product set product_name='"+e.getName()+"', price="+ e.getPrice()+", description='"+e.getDescription()+"' , image='"+e.getImage()+"' where id="+e.getId());
//             ps.setString(1, "Benze");
//             ps.setFloat(2, 1200);
//             ps.setInt (3, 8);
             status= ps.executeUpdate();
             con.close();
         }
         catch(Exception ex){
             ex.printStackTrace();
         }
         return status;
     }
     
      public static Shoe getShoeById (int id)
    {
        Shoe e = new Shoe();
        try
        {
            Connection con = getConnection ();
            PreparedStatement ps =con.prepareStatement ("select id,product_name,price from product where id=?");
            ps.setInt (1, id);
            ResultSet rs = ps.executeQuery ();
            if (rs.next ())
         {
             e.setId (rs.getInt (1));
             e.setName (rs.getString (2));
             e.setPrice (rs.getInt(3));
         }
            con.close ();
        }
        catch (Exception ex)
        {
            ex.printStackTrace ();
        }
        return e;
    }
      
     public static int DeleteShoe (Shoe e){
         int status = 0;
         try{
             Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("DELETE FROM product WHERE id=" +e.getId());
//             ps.setString(1, "Benze");
//             ps.setFloat(2, 1200);
//             ps.setInt (3, 8);
             status= ps.executeUpdate();
             con.close();
         }catch(Exception ex){
             ex.printStackTrace();
         }
         return status;
     }
      
}
