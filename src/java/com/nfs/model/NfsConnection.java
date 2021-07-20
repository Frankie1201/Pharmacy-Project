package com.nfs.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class NfsConnection {
    public static Connection connect()
    {
        Connection con = null;
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");//mysql DB
        String URL = "jdbc:mysql://localhost:3306/nfs?autoReconnect=true&useSSL=false";//DB location
        String user = "root";//DB user name
        String pwd = "passwordR00T";//DB password
        
        con = DriverManager.getConnection(URL , user , pwd);
        }
        catch(Exception ex)
                {
                 System.out.println("DB Error :"+ex);   
                }
        return con;
    }
    
}
