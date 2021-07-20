<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.Statement"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "com.nfs.model.NfsConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/adminTableStyle.css">
        <title>Pharmacist</title>
    </head>
    <body>
        <div class="homehead">
            <h1>NFS Pharmacy</h1>
        </div>
        <div class="navbar">
            <nav>
                <a href="adminhome.jsp">Home</a>
                |
                <a href="medicineDisplay.jsp">Medicine Stock</a>
                |
                <a href="pharmacistDisplay.jsp">Pharmacist List</a>
                |
                <a href="customerDisplay.jsp">Customer List</a>
                |
                <a href="CorderDisplay.jsp">Order List</a>
            </nav>
        </div>
        <br>
        <br>
        <div class="disheader">Pharmacist Details</div>
        <br>
        <br>
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
                <th> Staff ID </th>
                <th> Full Name </th>
                <th> Address </th>
                <th> Phone </th>
                <th> Email </th>
                <th> Password </th>
            </tr>  
           <%
            while(rs.next())
            {
                %>   
            <tr>
                <td> <%= rs.getInt(1)%> </td>
                <td> <%= rs.getString(2)%> </td>
                <td> <%= rs.getString(3)%> </td>
                <td> <%= rs.getString(4)%> </td>
                <td> <%= rs.getString(5)%> </td>
                <td> <%= rs.getString(6)%> </td>
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
        <a href="addPhar.jsp">Add Pharmacist</a> &nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deletePhar.jsp">Delete Pharmacist</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="updPhar.jsp">Update Pharmacist</a>
        </center>
    </body>
</html>
