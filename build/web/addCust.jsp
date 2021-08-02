
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
        <div class="LogHead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Customer</div>
        <div class="form">
        <form action="CreateCust" method="get">
            
            <table>
                <tr>
                    <td>Customer Full Name</td>
                    <td><input type="text" name="fullName" class="field"></td>
                </tr>
                <tr>
                    <td>Customer Address</td>
                    <td><input type="text" name="address" class="field"></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phone" class="field"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" class="field"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" class="field"></td>
                </tr>
                    <td></td>
                    <td><input type="submit" name="Register" class="regButton"></td>
                </tr>
            </table>
            
        </form>
        </div> 
        </div> 
        <center>
        <a href="addCust.jsp">Add Customer</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deleteCust.jsp">Delete Customer</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="UpdCust.jsp">Update Customer</a>
        </center>
    </body>
</html>
