
package com.nfs.model;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;//pre-compiled statement
import java.sql.ResultSet;

public class StaffQuery {
    
    //Insert Staff Record
    public static int insert(Staff s)
    {
        Connection con = NfsConnection.connect();
         int row_insert = 0;
         
         try
         {
            String qry = "insert into staff(fullName,address,phone,email,password) values(?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(qry);//query getting pre-compiled 
            
            stmt.setString(1, s.getFullName());
            stmt.setString(2, s.getAddress());
            stmt.setString(3, s.getPhone());
            stmt.setString(4, s.getEmail());
            stmt.setString(5, s.getPassword());
            
            row_insert = stmt.executeUpdate();
            
         }
         catch(Exception ex)
         {
            System.out.println("Insert error : "+ex); 
         }
         
         return row_insert;
         
    }//insert ends
    
    
    //2. update -> int
    public static int update1(int sId , String up_fullName)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update staff set fullName='"+up_fullName+"' where sId="+sId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        
        return row_update;
    }
        
        //2. update -> int
    public static int update2(int sId , String up_address)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update staff set address='"+up_address+"' where sId="+sId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        
        return row_update;
    }
    
            //2. update -> int
    public static int update3(int sId , String up_phone)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update staff set phone='"+up_phone+"' where sId="+sId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        
        return row_update;
    }
    
            //2. update -> int
    public static int update4(int sId , String up_email)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update staff set email='"+up_email+"' where sId="+sId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        
        return row_update;
    }
    
            //2. update -> int
    public static int update5(int sId , String up_password)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update staff set password='"+up_password+"' where sId="+sId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        
        return row_update;
    }
       
    
    //3. delete -> int
    public static int delete(int sId)
    {
        int row_delete = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "delete from staff where sId="+sId;
            
            row_delete = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Delete Error :"+ex);
        }
        
        return row_delete;
        
    }//delete ends
    
    //4. select -> void
    public void display()
    {
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "select * from staff";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
            //read all data
            //next() -> check if next row is present
            while(rs.next())
            {             
                int i = rs.getInt(1);
                String f = rs.getString(2);
                String a = rs.getString(3);
                String p = rs.getString(4);
                String e = rs.getString(5);
                String w = rs.getString(6);
                
                System.out.println("SID :"+i);
                System.out.println("FULL NAME :"+f);
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
