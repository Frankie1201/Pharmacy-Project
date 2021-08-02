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
        <link rel="stylesheet" href="CSS/custStyle.css">
        <title>Customer Home Page</title>
        <style>
            .Logout{
                float: right;
            }
            
            input[type=submit]{
                border: none;
                background: none;
                font-size: 15px;
                text-decoration: underline;
                color: #000099;
            }
            
            .button{
                background-color: #0099ff;
                border-style: none;
                width: 300px;
                color: white;
                padding: 15px 32px;
                text-align: center;
                display:inline-block;
                font-size: 22px;
                margin: 4px 2px;
                border-radius: 15px;
            }
            
            .button1{
                background-color: #0099ff;
                border-style: none;
                width: 250px;
                padding: 10px 50px 10px 50px;
                color: white;
                text-align: center;
                font-size: 15px;
                border-radius: 15px;
            }
            
            th{
                color: #0055bf;
                font-size: 15px;
              
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
                
                <form action="LogOut" class="Logout">
                    <input type="submit" value="Logout"/>       
                </form>
            </nav>
        </div>
        
        <div style="background-image: url('IMG/cust.jpg'); background-repeat: no-repeat; background-size: 1050px 750px">
         <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <center>
        <a href="custMed.jsp" class="button">Order Medicine</a>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <a href="custPhar.jsp" class="button">Contact a Pharmacist</a>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <table width="1000px" height="250px">
        <tr>
            <td rowspan="4" align="center"><img src="IMG/special.gif" style="width:250px; height:250px;"></td>
        </tr>
                <tr>
                    <td align="center"><img src="IMG/calpol2.jpg" width="150px" height="125px"/></td>
                    <td align="center"><img src="IMG/sooth2.jpg" width="150px" height="125px"/></td>
                    <td align="center"><img src="IMG/lemsip2.jpg" width="150px" height="125px"/></td>
                </tr>
                <tr>
                    <th align="center">Save 10% on Calpol<br>£2.99</th>
                    <th align="center">New extended line<br> &nbsp;</th>
                    <th align="center">Stock up for Winter<br> with our 2 for 1 Offer</th>
                </tr>
                <tr>
                    <td align="center"><a href="custMed.jsp" class="button1">Order</a></td>
                    <td align="center"><a href="custMed.jsp" class="button1">Order</a></td>
                    <td align="center"><a href="custMed.jsp" class="button1">Order</a></td>
                </tr>
    </table>
    </center>
    <br>
    <br>
    <br>
       </div>
        
         <%
          
           
       Connection con = NfsConnection.connect();
       Statement stmt = con.createStatement();
       
       stmt.executeUpdate("truncate myorder");//delete only rows
       %>
       
       
        
        
        
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
