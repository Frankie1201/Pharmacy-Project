<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/UpdateStyle.css">
        <title>Update Customer</title>
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
        <div class="disheader">Update Customer Name</div>
        <div class="form">
            <form action="UpdCust1" method="get">
                    <table style="border: none;">
            <tr>
                <th>Customer ID</th>
                <th>Customer Full Name</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="customerId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="fullName" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="disheader">Update Customer Address</div>
        <div class="form">
            <form action="UpdCust2" method="get">
                    <table style="border: none;">
            <tr>
                <th>Customer ID</th>
                <th>Customer Address</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="customerId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="address" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
         <div class="disheader">Update Customer Phone Number</div>
        <div class="form">
            <form action="UpdCust3" method="get">
                    <table style="border: none;">
            <tr>
                <th>Customer ID</th>
                <th>Customer Phone Number</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="customerId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="phone" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
         <div class="disheader">Update Customer Email Address</div>
        <div class="form">
            <form action="UpdCust4" method="get">
                    <table style="border: none;">
            <tr>
                <th>Customer ID</th>
                <th>Customer Email Address</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="customerId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="email" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
         <div class="disheader">Update Customer Password</div>
        <div class="form">
            <form action="UpdCust5" method="get">
                    <table style="border: none;">
            <tr>
                <th>Customer ID</th>
                <th>Password</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="customerId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="password" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <center>
        <a href="addCust.jsp">Add Customer</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="deleteCust.jsp">Delete Customer</a>&nbsp;&nbsp;&nbsp;
        |&nbsp;&nbsp;&nbsp;
        <a href="UpdCust.jsp">Update Customer</a>
        </center>
    </body>
</html>
