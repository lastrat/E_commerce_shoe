/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecommerce.resources;

/**
 *
 * @author lastrategie
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ZT-YRN
 */
public class UserHandler {
      public static User getUserById (int id)
    {
        User e = new User();
        try
        {
            Connection con = DB.getConnection ();
            PreparedStatement ps =con.prepareStatement ("select id, username, email, password, role from user where id=?");
            ps.setInt (1, id);
            ResultSet rs = ps.executeQuery ();
            if (rs.next ())
         {
             e.setId (rs.getInt (1));
             e.setName (rs.getString (2));
             e.setEmail(rs.getString(3));
             e.setPassword(rs.getString(4));
             e.setRole(rs.getString(5));
             
         }
            con.close ();
        }
        catch (Exception ex)
        {
            ex.printStackTrace ();
        }
        return e;
    }
      
    public static List <User> getAllUsers()
    {
        List<User> user = new ArrayList<>();
        try
        {
            Connection con = DB.getConnection ();
            PreparedStatement ps = con.prepareStatement ("select id,username,email,tel,role from user");
            ResultSet rs = ps.executeQuery ();
            while (rs.next ())
         {
             User e = new User ();
             e.setId (rs.getInt (1));
             e.setName (rs.getString (2));
             //e.setPassword(rs.getString(3));
             e.setEmail(rs.getString (3));
             e.setTel(rs.getString (4));
             e.setRole(rs.getString (5));
             user.add(e);
         }
            con.close ();
        }
        catch (Exception e)
        {
            e.printStackTrace ();
        }
        return user;
    }
    
     public static int update(User e){
         int status =0;
         try{
             Connection con = DB.getConnection();
             PreparedStatement ps = con.prepareStatement("update user set username=?, email=?, role=?, tel= ? where id=?");
             ps.setString (1, e.getName ());
             ps.setString (2, e.getEmail ());
             ps.setString (3, e.getRole ());
             ps.setString (4, e.gettel());
             ps.setInt (5, e.getId ());
             status= ps.executeUpdate();
             con.close();
         }
         catch(Exception ex){
             ex.printStackTrace();
         }
         return status;
     }
     
       public static int delete (int id)
    {
        int status = 0;
        try
        {
            Connection con = DB.getConnection ();
            PreparedStatement ps =con.prepareStatement ("delete from user where id=?");
            ps.setInt (1, id);
            status = ps.executeUpdate ();
            con.close ();
        } 
        catch (Exception e)
        {
            e.printStackTrace ();
        }
        return status;
    }
}
