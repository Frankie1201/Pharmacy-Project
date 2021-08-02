
package com.nfs.model;

public class Corder {
    
    //declare variables
    int orderId;
    int medId;
    int customerId;
    int quantity;
    double price;
    double totalPrice;
    
    //default constructor

    public Corder() {
    }
    
    //parameter constructor

    public Corder(int medId, int customerId, double price, double totalPrice) {
        this.medId = medId;
        this.customerId = customerId;
        this.price = price;
        this.totalPrice = totalPrice;
    }
    
    //getter and setter

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getMedId() {
        return medId;
    }

    public void setMedId(int medId) {
        this.medId = medId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    
}
