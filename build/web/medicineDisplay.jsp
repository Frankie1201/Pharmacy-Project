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
        <title>Medicine</title>
        <style>
                        .navbar{
    width: 96.2%;
    height: 17px;
    background-color: #0099ff;
    color: white;
    padding: 20px;
    overflow: hidden;
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
                <a href="adminhome.jsp">Home</a>
                |
                <a href="medicineDisplay.jsp">Medicine Stock</a>
                |
                <a href="pharmacistDisplay.jsp">Pharmacist List</a>
                |
                <a href="customerDisplay.jsp">Customer List</a>
                |
                <a href="CorderDisplay.jsp">Order List</a>
                |
                <form action="LogOut">
                    <input type="submit" value="Logout" class="logout"/>       
                </form>
            </nav>
        </div>
        <br>
        <br>
        <div class="disheader">Medicine Stock</div>
        <br>
        <br>
        
        <%
        try
        {
            Connection con = NfsConnection.connect();//get connection
            Statement stmt = con.createStatement();
            
            String qry = "select * from medicine";
            
            ResultSet rs = stmt.executeQuery(qry);//return ResultSet-> holds all rows from table
            
       %>
        <table>
            <div class="displaytable">
              <tr>
                <th> Medicine ID </th>
                <th> Name </th>
                <th> Supplier ID </th>
                <th> Quantity in Stock </th>
                <th> Price </th>
            </tr>  
           <%
            while(rs.next())
            {
                %>   
            <tr>
                <td> <%= rs.getInt(1)%> </td>
                <td> <%= rs.getString(2)%> </td>
                <td> <%= rs.getInt(3)%> </td>
                <td> <%= rs.getInt(4)%> </td>
                <td> <%= rs.getDouble(5)%> </td>
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
        <a href="addMed.jsp">Add Medicine</a> &nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deleteMed.jsp">Delete Medicine</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="UpdMed.jsp">Update Medicine</a>
        </center>
    </body>
</html>
