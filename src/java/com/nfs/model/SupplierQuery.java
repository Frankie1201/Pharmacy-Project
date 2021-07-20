
package com.nfs.model;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;//pre-compiled statement
import java.sql.ResultSet;

public class SupplierQuery {
    
    //Insert Staff Record
    public static int insert(Supplier p)
    {
        Connection con = NfsConnection.connect();
         int row_insert = 0;
         
         try
         { 
             
            String qry = "insert into supplier(supplierName,address,phone,email) values(?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(qry);//query getting pre-compiled 
            
            stmt.setString(1, p.getSupplierName());
            stmt.setString(2, p.getAddress());
            stmt.setString(3, p.getPhone());
            stmt.setString(4, p.getEmail());
            
            row_insert = stmt.executeUpdate();
            
         }
         catch(Exception ex)
         {
            System.out.println("Insert error : "+ex); 
         }
         
         return row_insert;
         
    }//insert ends
    
    //2. update -> int
    
    public static int update(int supplierId, String up_supplierName, String up_address , String up_phone , String up_email)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update supplier set supplierName="+up_supplierName+" , address="+up_address+" , phone="+up_phone+" , email="+up_email+" where supplierId="+supplierId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends
    
    /*//2. Update -> int
    public static int update1(int supplierId, String up_supplierName)
    {
        int row_update = 0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update supplier set supplierName'"+up_supplierName+"' where supplierId="+supplierId;
            
            row_update = stmt.excuteUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }
    
    public static int update2(int supplierId, String up_address)
    {
        int row_update = 0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update supplier set address'"+up_address+"' where supplierId="+supplierId;
            
            row_update = stmt.excuteUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }
    
    public static int update3(int supplierId, String up_phone)
    {
        int row_update = 0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update supplier set phone'"+up_phone+"' where supplierId="+supplierId;
            
            row_update = stmt.excuteUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }
    
    public static int update4(int supplierId, String up_email)
    {
        int row_update = 0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update supplier set email'"+up_email+"' where supplierId="+supplierId;
            
            row_update = stmt.excuteUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }*/
    
    //3. delete -> int
    public static int delete(int supplierId)
    {
        int row_delete = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "delete from supplier where supplierId="+supplierId;
            
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
            
            String qry = "select * from supplier";
            
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
                
                System.out.println("SUPPLIER ID :"+i);
                System.out.println("SUPPLIER NAME :"+n);
                System.out.println("ADDRESS :"+a);
                System.out.println("PHONE :"+p);
                System.out.println("EMAIL :"+e);
                
                System.out.println("========================");
                
            }//while ends
            
        }
        catch(Exception ex)
        {
            System.out.println("Display Error :"+ex);
        }
    }//display ends
    
}//class ends
