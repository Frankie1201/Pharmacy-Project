

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css">
        <title>Add Medicine</title>     
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
        <div class="RegForm">
        <div class="LogHead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Medicine</div>
        <div class="form">
        <form action="CreateMed" method="get">
            
            <table>
                <tr>
                    <td>Medicine Name</td>
                    <td><input type="text" name="name" class="field"></td>
                </tr>
                <tr>
                    <td>Supplier ID</td>
                    <td><input type="text" name="supplierId" class="field"></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="quantity" class="field"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" class="field"></td>
                </tr>
                    <td></td>
                    <td><input type="submit" name="Register" class="regButton"></td>
                </tr>
            </table>
            
        </form>
         </div>
        </div>
        <center>
        <a href="addMed.jsp">Add Medicine</a> &nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deleteMed.jsp">Delete Medicine</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="UpdMed.jsp">Update Medicine</a>
        </center>
    </body>
</html>
