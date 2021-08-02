<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css">
        <title>Add Customer Order</title>
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
        <div class="LogHead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Customer Order</div>
        <div class="form">
        <form action="CreateCord" method="get">
            
            <table>
                <tr>
                    <td>Medicine ID</td>
                    <td><input type="text" name="medId" class="field"></td>
                </tr>
                <tr>
                    <td>Customer ID</td>
                    <td><input type="text" name="customerId" class="field"></td>
                </tr>
                <tr>
                    <td>Medicine Unit Price</td>
                    <td><input type="text" name="unitPrice" class="field"></td>
                </tr>
                    <td></td>
                    <td><input type="submit" name="Register" class="regButton"></td>
                </tr>
            </table>
             
        </form>
        </div> 
        </div> 
        <center>
        <a href="addCord.jsp">Add Customer Order</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deleteCord.jsp">Delete Customer Order</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="UpdCord.jsp">Update Customer Order</a>
        </center>
    </body>
</html>
