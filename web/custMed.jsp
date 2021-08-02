<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.Statement"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "com.nfs.model.NfsConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
       
       <style>
.homehead{
    font: myriad pro regular;
    font-size: 30px;
    color: #0099ff;
    text-align: center;
}


.navbar{
    width: 96.2%;
    height: 17px;
    background-color: #0099ff;
    color: white;
    padding: 20px;
    overflow: hidden;
}
 .cartButton{
 background-color: #0099ff;
                    border-style: none;
                    border-radius: 10px;
                    width: 300px;
                    color: white;
                    padding: 10px 25px;
                    text-align: center;
                    display:inline-block;
                    font-size: 16px;
                    margin: 2px 1px;
}
            
.table1{
                width: 345px;
                float: left;
}

.table{
                
}
            
.title{
                border: hidden;
                width: 110px;
                font-size: 20px;
                color: #0099ff;
 }
           

.footer{
position: static;
bottom: 0px;
width: 100%;
background-color: #0099ff;
color: white;
padding: 10px 0px 10px 0px;
font-size: 15px;  
}
            
.social{
float: right;
margin-right: 20px;
padding-bottom: 5px;
font-size: 25px;
}

            .logout{
                position: relative;
                top: -22px;
                left: 940px;
                border: none;
                background: none;
                font-size: 15px;
                text-decoration: underline;
                color: #000099;
            }
            
           

     
       </style>
       
        <title>Order Medicine</title>
        
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
                |
                <form action="LogOut">
                    <input type="submit" value="Logout" class="logout"/>       
                </form>
            </nav>
        </div>
        
        
 
            
            
        <form action="Order">
               <%
                   try{
                   System.out.println("custMed.jsp");
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
       
       ResultSet rs = stmt.executeQuery("select * from medicine where name='calpol'");
       %>
       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Calpol.jpeg" alt="Image of Calpol" height="175px"> </th>
            </tr>  
           <%
            if(rs.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs.getString("name") %>> </td>
                <td class="title"> <%= rs.getDouble("price")%> </td>
            <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>    
        <%
            }//while ends 
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }


        %>
       
        </form>
        
        
        
        
        
        
        
        

                
        
        
        
        
        <form action="Order">  
       <%
           try{
           
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
       
       ResultSet rs1 = stmt.executeQuery("select * from medicine where name='paracetamol'");
       %>
       
       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/para.jpeg" alt="Image of Paracetomol" height="175px"> </th>
            </tr>  
           <%
            if(rs1.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs1.getString("name") %>> </td>
                <td class="title"> <%= rs1.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form> 







        
        <form action="Order">
        <%
            try{
                   
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs2 = stmt.executeQuery("select * from medicine where name='ibuprofen'");
       %>
       
       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Ibru.jpg" alt="Image of Ibuprofen" height="175px"> </th>
            </tr>  
           <%
            if(rs2.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs2.getString("name") %>> </td>
                <td class="title"> <%= rs2.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends }
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
        
        

        
        
        
        
        
        
        
        
        <form action="Order">
              <%
                  try{

       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs3 = stmt.executeQuery("select * from medicine where name='co-codamol'");
       %>

       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/co-cod.jpg" alt="Image of Co-Codamol" height="175px"> </th>
            </tr>  
           <%
            if(rs3.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs3.getString("name") %>> </td>
                <td class="title"> <%= rs3.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
        
        
        
        
        
        
        <form action="Order">
       <%
           try{
                   
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs4 = stmt.executeQuery("select * from medicine where name='penicillin'");
       %>
       
       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/peni.jpg" alt="Image of Penicillin" height="175px"> </th>
            </tr>  
           <%
            if(rs4.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs4.getString("name") %>> </td>
                <td class="title"> <%= rs4.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
}
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        

        
        
        
        
        

        
        
        
        
        
        
        
        <form action="Order">
        <%
                   try{

       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
       ResultSet rs5 = stmt.executeQuery("select * from medicine where name='chesty cough remedy'");
       %>

       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Chesty.png" alt="Image of Chesty Cough Remedy" height="175px"> </th>
            </tr>  
           <%
            if(rs5.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs5.getString("name") %>> </td>
                <td class="title"> <%= rs5.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
}
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
        
       
        
        
        
        
        
        
        
        
        
        
        <form action="Order">
       <%
                      try{

       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs6 = stmt.executeQuery("select * from medicine where name='lemsip'");
       %>
       
       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Lem.jpg" alt="Image of Lemsip" height="175px"> </th>
            </tr>  
           <%
            if(rs6.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs6.getString("name") %>> </td>
                <td class="title"> <%= rs6.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
}
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
 
        
        
        
        
        
        
        <form action="Order">
       <%
                                 try{
   
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs7 = stmt.executeQuery("select * from medicine where name='amoxicillin'");
       %>

       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Amo.jpg" alt="Image of Amoxicillin" height="175px"> </th>
            </tr>  
           <%
            if(rs7.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs7.getString("name") %>> </td>
                <td class="title"> <%= rs7.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
}
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
        
        
        
        
        
        <form action="Order">
               <%
        try{

       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs8 = stmt.executeQuery("select * from medicine where name='Dulcolax'");
       %>

       <table class="table1">
           
              <tr>
                  <th colspan="2"><img src="IMG/Dul.jpeg" alt="Image of Dulcolax" height="175px"> </th>
            </tr>  
           <%
            if(rs8.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs8.getString("name") %>> </td>
                <td class="title"> <%= rs8.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
}
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        
        
        
        
        
        
        
        
        
        
        
        
        <center> 
        <form action="Order">
                       <%
           try{

       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
        ResultSet rs9 = stmt.executeQuery("select * from medicine where name='soothers'");
       %>
       
       <table class="table">
           
              <tr>
                  <th colspan="2"><img src="IMG/Soothers.jpeg" alt="Image of Soothers" width="200px"> </th>
            </tr>  
           <%
            if(rs9.next())
            {
                %>   
            <tr>
                <td> <input type="text" name="medicine" class="title" value=<%= rs9.getString("name") %>> </td>
                <td class="title"> <%= rs9.getDouble("price")%> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Add to Cart" class="cartButton"/></td>
           </tr>
        </table>
            
        <%
            }//while ends 
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
        %>
        </form>
        </center>  
        
        
        
   
        
        
        
        
        
        
        
        
        
        
        
        
        </form>
        <br>
      <br>
        
        
        
        
        
        
        
        
        
       
       <%
        try{
                   
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
           
           ResultSet rs10 = stmt.executeQuery("select * from myorder");
       %>
       <table border="0">
       <%
       while(rs10.next())
       {
           %>
           <tr>
               <td><%= rs10.getString("name")%></td>
               <td><%= rs10.getDouble("price")%></td>
           </tr>
      
               <%
                   }
              }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
                   %>
        </table>
       
       
       
       <%
           double bill = 0.0;
           try{
             Connection con = NfsConnection.connect();
             Statement stmt = con.createStatement();
       ResultSet rs11 = stmt.executeQuery("select sum(price) from myorder");
       
       if(rs11.next())
       {
           bill = rs11.getDouble(1);
       }
       %>
       <br>
       <hr>
       Total Bill = <%= bill%>
                      <%
              }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }
                   %>
       <br/>
       <a href="checkout.jsp?total=<%= bill%>">Check out</a>
        
        
        
        
        
        <div class="footer">
        Copyright of NFS Pharmacy
        <div class="social">
            <a href="https://www.facebook.com" class="fab fa-facebook-square"></a>
            <a href="https://www.instagram.com" class="fab fa-instagram-square"></a>
            <a href="https://twitter.com" class="fab fa-twitter-square"></a>
            <a href="https://github.com" class="fab fa-github-square"></a>
        </div>
    </div>
    </body>
</html>
