

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/adminStyle.css">
        <title>Admin Home</title>
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
        <br>
        <div class="AdWel">
            <h2><center>Welcome to the NFS Pharmacy Dashboard</center></h2>
    <center>
        <br>
        <a href="pharmacistDisplay.jsp" class="button">Staff Details</a> 
        <a href="medicineDisplay.jsp" class="button">Medicine Details</a>
        <br>
        <br>
        <a href="customerDisplay.jsp" class="button">Customer Display</a>
        <a href="CorderDisplay.jsp" class="button">Customer Order Display</a>
    </center>
    <br>
    <br>
    <br>
    <br>
    </div>
        <div class="footer">
        Copyright of NFS Pharmacy 
    </div>
    </body>
</html>
