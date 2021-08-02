<%@page import="com.nfs.model.CorderQuery"%>
<%@page import="com.nfs.model.Corder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.nfs.model.NfsConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/custStyle.css">
        <title>Checkout</title>
        <style>
            .Order{
                color: #0099ff;
                font-size: 40px;
            }
            .thank{
                color: #0055bf;
                font-size: 28px;
            }
            
            .link{
                color: #0055bf;
            }
        </style>
    </head>
    <body>
        
         <div class="homehead">
            <h1>NFS Pharmacy</h1>
        </div>
        <div class="navbar">
            <nav>
                 <a href="customerhome.jsp">Home</a>
                |
                <a href="custMed.jsp">Order Medicine</a>
                |
                <a href="custPhar.jsp">Contact a Pharmacist</a>
                
            </nav>
        </div>
        
        
        <%
        String user = session.getAttribute("user").toString();
        System.out.println(user);
         Connection con = NfsConnection.connect();
         Statement stmt = con.createStatement();
          
         int medId = 0;
         int customerId = 0;
         double price = 0.0; 
         double totalPrice = 0.0;
        
         
        ResultSet rs = stmt.executeQuery("select * from customer where email='"+user+"'");
        if(rs.next())
        {
            customerId = rs.getInt("customerId");
            System.out.println(customerId);
        }
        
        ResultSet rs1 = stmt.executeQuery("select * from myorder"); //temp table
        while(rs1.next())
        {
           medId = rs1.getInt("medId");
           price = rs1.getDouble("price");
           System.out.println(medId);
           System.out.println(price);
    
        }
        
        totalPrice = Double.parseDouble(request.getParameter("total"));
     
        
        //create order object
            Corder o = new Corder(medId,customerId,price,totalPrice);
            
            //insert order into DB
            int r = CorderQuery.insert(o);

            if(r==1)
            {
                out.print("Customer Order Record Saved");
            }//if ends
            else{
                out.print("Error......Can not save record");
            }//else ends
      
        
        
        %>
        
    <center>
        <div class="Order"><h1>Order placed</h1></div>
        <div class="thank"><h2>Thank you !</h2></div>
        <div class="link"><a href="customerhome.jsp">Go to Home</a></div>
    </center>
    </body>
</html>
