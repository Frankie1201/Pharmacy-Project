package com.nfs.model;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;//pre-compiled statement
import java.sql.ResultSet;

public class CorderQuery {
    
    //Insert Staff Record
    public static int insert(Corder o)
    {
        Connection con = NfsConnection.connect();
         int row_insert = 0;
         
         try
         {  
            String qry = "insert into Corder(medId,customerId,price) values(?,?,?)";
            PreparedStatement stmt = con.prepareStatement(qry);//query getting pre-compiled 
            
            stmt.setInt(1, o.getMedId());
            stmt.setInt(2, o.getCustomerId());
            stmt.setDouble(3, o.getPrice());
            
            row_insert = stmt.executeUpdate();
            
         }
         catch(Exception ex)
         {
            System.out.println("Insert error : "+ex); 
         }
         
         return row_insert;
         
    }//insert ends
    
    /*//2. update -> int
    public static int update(int orderId, int up_medId, int up_customerId , int up_quantity , Double up_unitPrice , Double up_totalPrice)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update Corder set medId="+up_medId+" , customerId="+up_customerId+" , quantity="+up_quantity+" , unitPrice="+up_unitPrice+" , totalPrice="+up_totalPrice+" where orderId="+orderId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends*/
    
    //2. Update -> int
    public static int update1(int orderId, int up_medId)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update Corder set medId="+up_medId+" where orderId="+orderId; 
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;        
    }//update ends
    
    
        //2. Update -> int
    public static int update2(int orderId, int up_customerId)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update Corder set customerId="+up_customerId+" where orderId="+orderId; 
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;        
    }//update ends
    
    
        //2. Update -> int
    public static int update4(int orderId, double up_price)
    {
       int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update Corder set price'"+up_price+"' where orderId="+orderId; 
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;        
    }//update ends
    
   
    
    
    
    //3. delete -> int
    public static int delete(int orderId)
    {
        int row_delete = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "delete from Corder where orderId="+orderId;
            
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
            
            String qry = "select * from Corder";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
            //read all data
            //next() -> check if next row is present
            while(rs.next())
            {  
                int i = rs.getInt(1);
                int m = rs.getInt(2);
                int c = rs.getInt(3);
                double u = rs.getDouble(4);
                
                System.out.println("ORDER ID :"+i);
                System.out.println("MEDICINE ID :"+m);
                System.out.println("CUSTOMER ID :"+c);
                System.out.println("PRICE :"+u);
                
                System.out.println("========================");
                
            }//while ends
            
        }
        catch(Exception ex)
        {
            System.out.println("Display Error :"+ex);
        }
    }//display ends
    
}
