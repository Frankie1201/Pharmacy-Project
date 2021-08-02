

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css">
        <title>Add New Pharmacist</title>     
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
            <div class="LogHead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Pharmacist</div>
        <div class="form">
        <form action="CreateStaff" method="get">
  
            <table>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullName" placeholder="Mr John Doe" class="field"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" placeholder="1 Buckingham Palace" class="field"></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phone" placeholder="01905 123456" class="field"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" placeholder="example@email.com" class="field"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" class="field"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="Register" class="regButton"></td>
                </tr>
            </table>
            
        </form>
        </div> 
        </div>
                    <center>
        <a href="addPhar.jsp">Add Pharmacist</a> &nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deletePhar.jsp">Delete Pharmacist</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="updPhar.jsp">Update Pharmacist</a>
        </center>
    </body>
</html>
