
package com.nfs.model;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;//pre-compiled statement
import java.sql.ResultSet;

public class CustomerQuery {
    
    //Insert Staff Record
    public static int insert(Customer c)
    {
        Connection con = NfsConnection.connect();
         int row_insert = 0;
         
         try
         { 
             
            String qry = "insert into customer(fullName,address,phone,email,password) values(?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(qry);//query getting pre-compiled 
            
            stmt.setString(1, c.getFullName());
            stmt.setString(2, c.getAddress());
            stmt.setString(3, c.getPhone());
            stmt.setString(4, c.getEmail());
            stmt.setString(5, c.getPassword());
            
            row_insert = stmt.executeUpdate();
            
         }
         catch(Exception ex)
         {
            System.out.println("Insert error : "+ex); 
         }
         
         return row_insert;
         
    }//insert ends
    
    /*//2. update -> int
    
    public static int update(int customerId, String up_fullName, String up_address , String up_phone , String up_email , String up_password)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set fullName="+up_fullName+" , address="+up_address+" , phone="+up_phone+" , email="+up_email+" , password="+up_password+" where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends*/
    
    //2. update -> int
    public static int update1(int customerId, String up_fullName)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set fullName='"+up_fullName+"' where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;   
        
    }//update ends
    
        //2. update -> int
    public static int update2(int customerId, String up_address)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set address='"+up_address+"' where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;   
        
    }//update ends
    
        //2. update -> int
    public static int update3(int customerId, String up_phone)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set phone='"+up_phone+"' where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;   
        
    }//update ends
    
        //2. update -> int
    public static int update4(int customerId, String up_email)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set email='"+up_email+"' where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;   
        
    }//update ends
    
        //2. update -> int
    public static int update5(int customerId, String up_password)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update customer set password='"+up_password+"' where customerId="+customerId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;   
        
    }//update ends
    
    
    //3. delete -> int
    public static int delete(int customerId)
    {
        int row_delete = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "delete from customer where customerId="+customerId;
            
            row_delete = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Delete Error :"+ex);
        }
        
        return row_delete;
        
    }//delete ends
    
    //select -> void
    public void display()
    {
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "select * from customer";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
            //read all data
            //next() -> check if next row is present
            while(rs.next())
            {  
                int i = rs.getInt(1);
                String n = rs.getString(2);
                String a = rs.getString(3);
                String p = rs.getString(4);
                String e = rs.getString(5);
                String w = rs.getString(6);
                
                System.out.println("CUSTOMER ID :"+i);
                System.out.println("FULL NAME :"+n);
                System.out.println("ADDRESS :"+a);
                System.out.println("PHONE :"+p);
                System.out.println("EMAIL :"+e);
                System.out.println("PASSWORD :"+w);
                
                System.out.println("========================");
                
            }//while ends
            
        }
        catch(Exception ex)
        {
            System.out.println("Display Error :"+ex);
        }
    }//display ends
    
}//class ends
