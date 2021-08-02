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
        <title>Contact a Pharmacist</title>    
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
            
.displaytable{
    border-collapse: collapse;
}

th, td{
    width: 250px;
    height: 40px;
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #0099ff;
}

th{
    background-color: #0099ff;
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
        
        
        
        
        
        <%
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "select * from staff";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
       %>
        <table>
            <div class="displaytable">
              <tr>
                <th> Full Name </th>
                <th> Address </th>
                <th> Phone </th>
                <th> Email </th>
            </tr>  
           <%
            while(rs.next())
            {
            
                %>   
            <tr>
                <td> <%= rs.getString(2)%> </td>
                <td> <%= rs.getString(3)%> </td>
                <td> <%= rs.getString(4)%> </td>
                <td> <%= rs.getString(5)%> </td>
            </tr>
        <%
            }//while ends 
        %>
            </div> 
        </table> 
        <%
            }
            catch(Exception ex)
        {
            System.out.println("Display Error :"+ex);
        }
        %>
        <br>
        <br>
    <center>
        
        
        
        
        
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
