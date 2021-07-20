
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css">
        <title>Delete Pharmacist</title>
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
        <div class="RegForm">
            <div class="LogHead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete Pharmacist</div>
        <div class="form">
        <form action="DeleteStaff" method="get">
            <table>
                <tr>
                    <td>Staff ID</td>
                    <td><input type="text" name="sId" class="field"></td>
                    <td><input type="submit" value="Delete" class="regButton"></td>
                </tr>
            </table>
        </form>
        </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
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
