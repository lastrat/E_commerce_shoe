/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecommerce.resources;

/**
 *
 * @author ZT-YRN
 */
public class Shoe {
     private int id; 
    private String name;
    private int price;
    private String image;
    private String description;

//    public Shoe(int id, String name, Float price, String image) {
//        this.id = id;
//        this.name = name;
//        this.price = price;
//        this.image = image;
//    }

    public int getId() {
        return id;
    }

//    public Shoe(String name, Float price, String image) {
//        this.name = name;
//        this.price = price;
//        this.image = image;
//    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    public void setDescription(String desc){
        this.description = desc;
    }
    
    public String getDescription(){
        return this.description;
    }
    
    
}



