
package com.nfs.model;

public class Staff {

    int sId;
    String fullName;
    String address;
    String phone;
    String email;
    String password;
    
    //default constructor
    public Staff() {
    }
    
    //parameter constructor
    public Staff(String fullName, String address, String phone, String email, String password) {
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }
    
    //getter and setter

    public int getsId() {
        return sId;
    }

    public void setsId(int sId) {
        this.sId = sId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
     
    
}
