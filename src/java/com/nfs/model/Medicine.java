
package com.nfs.model;


public class Medicine {

    //declare variable
    int medId;
    String name;
    int supplierId;
    int quantity;
    double price;
    
    //default constructor

    public Medicine() {
    }
    
    //parameter constructor

    public Medicine(String name, int supplierId, int quantity, double price) {
        this.name = name;
        this.supplierId = supplierId;
        this.quantity = quantity;
        this.price = price;
    }
    
    //getter and setter

    public int getMedId() {
        return medId;
    }

    public void setMedId(int medId) {
        this.medId = medId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    
}
