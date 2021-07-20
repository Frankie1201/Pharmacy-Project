
package com.nfs.model;

public class Supplier {
    
    //declare variables
    int supplierId;
    String supplierName;
    String address;
    String phone;
    String email;
    
    //default constructor

    public Supplier() {
    }
    
    //parameter constructor

    public Supplier(String supplierName, String address, String phone, String email) {
        this.supplierName = supplierName;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }
    
    //getter and setter

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    
    
}
