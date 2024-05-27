/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecommerce.resources;

/**
 *
 * @author lastrategie
 */
public class User {
    private int id; 
    private String name;
    private String password;
    private String email; 
    private String role;
    private String tel;
    
    public void setId(int id){
        this.id = id;
    }
    public int getId(){
        return id;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
     public String getName() {
        return name;
    }
     
     public void setPassword(String password) {
        this.password = password;
    }
    
     public String getPassword() {
        return password;
    }
     
     public void setEmail(String email) {
        this.email = email;
    }
    
     public String getEmail() {
        return email;
    }
    
     public void setRole(String role) {
        this.role = role;
    }
     public void setTel(String tel) {
        this.tel = tel;
    }
    
     public String getRole() {
        return role;
    }
     
    public String gettel() {
        return tel;
    }
}

