
package com.nfs.model;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;//pre-compiled statement
import java.sql.ResultSet;

public class MedicineQuery {
    
    //Insert Staff Record
    public static int insert(Medicine m)
    {
        Connection con = NfsConnection.connect();
         int row_insert = 0;
         
         try
         { 
            String qry = "insert into medicine(name,supplierId,quantity,price) values(?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(qry);//query getting pre-compiled 
            
            stmt.setString(1, m.getName());
            stmt.setInt(2, m.getSupplierId());
            stmt.setInt(3, m.getQuantity());
            stmt.setDouble(4, m.getPrice());
            
            row_insert = stmt.executeUpdate();
            
         }
         catch(Exception ex)
         {
            System.out.println("Insert error : "+ex); 
         }
         
         return row_insert;
         
    }//insert ends
    
    /*//2. update -> int
    
    public static int update(int medId, String up_name, int up_supplierId , int up_quantity , double up_price)
    {
        int row_update = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update medicine set name="+up_name+" , supplierId="+up_supplierId+" , quantity="+up_quantity+" , price="+up_price+" where medId="+medId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends*/
    
    //2. update -> int
    
    public static int update1(int medId, String up_name)
    {
        int row_update =0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update medicine set name='"+up_name+"' where medId="+medId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends
    
        public static int update2(int medId, int up_supplierId)
    {
        int row_update =0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update medicine set supplierId="+up_supplierId+" where medId="+medId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends
        
                public static int update3(int medId, int up_quantity)
    {
        int row_update =0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update medicine set quantity="+up_quantity+" where medId="+medId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends
                
                
                public static int update4(int medId, double up_price)
    {
        int row_update =0;
        try
        {
          Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "update medicine set price='"+up_price+"' where medId="+medId;
            
            row_update = stmt.executeUpdate(qry);
        }
        catch(Exception ex)
        {
            System.out.println("Update Error :"+ex);
        }
        return row_update;
    }//update ends
        
    
    //3. delete -> int
    public static int delete(int medId)
    {
        int row_delete = 0;
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "delete from medicine where medId="+medId;
            
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
            
            String qry = "select * from medicine";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
            //read all data
            //next() -> check if next row is present
            while(rs.next())
            {             
                int m = rs.getInt(1);
                String n = rs.getString(2);
                int s = rs.getInt(3);
                int q = rs.getInt(4);
                double p = rs.getDouble(5);
                
                System.out.println("MEDID :"+m);
                System.out.println("NAME :"+n);
                System.out.println("SUPPLIERID :"+s);
                System.out.println("QUANTITY :"+q);
                System.out.println("Price :"+p);
                
                System.out.println("========================");
                
            }//while ends
            
        }
        catch(Exception ex)
        {
            System.out.println("Display Error :"+ex);
        }
    }//display ends
    
}//class ends
