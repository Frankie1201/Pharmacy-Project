

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/UpdateStyle.css">
        <title>Update Medicine</title>
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
        <div class="disheader">Update Medicine Name </div>
        <div class="form">
            <form action="UpdMed1" method="get">
                <table style="border: none;">
            <tr>
                <th>Medicine ID</th>
                <th>Medicine Name</th>
                <th></th>
            </tr>
            <tr>
                <td><input type="text" name="medId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="text" name="name" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
            </tr>
            </form>
        </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="disheader">Update Supplier ID</div>
        <div class="form">
            <form action="UpdMed2" method="get">
                <table style="border: none;">
                    <tr>
                    <th>Medicine ID</th>
                    <th>Supplier ID</th>
                    <td></td>
                    </tr>   
                    <tr>
                    <td><input type="text" name="medId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="text" name="supplierId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
                    </tr>
                </table>
                </form>
            </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="disheader">Update Medicine Quantity</div>
        <div class="form">
            <form action="UpdMed3" method="get">
                <table style="border: none;">
                    <tr>
                    <th>Medicine ID</th>
                    <th>Quantity</th>
                    <td></td>
                    </tr>   
                    <tr>
                    <td><input type="text" name="medId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="text" name="quantity" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
                    </tr>
                </table>
                </form>
            </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="disheader">Update Medicine Price</div>
        <div class="form">
            <form action="UpdMed4" method="get">
                <table style="border: none;">
                    <tr>
                    <th>Medicine ID</th>
                    <th>Price</th>
                    <td></td>
                    </tr>   
                    <tr>
                    <td><input type="text" name="medId" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="text" name="price" style="width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                    <td><input type="submit" value="Update" style="background-color: #0099ff; border-style: none; width: 150px; color: white; padding: 12px 20px; text-align: center; font-size: 16px; margin: 4px 2px; border-radius: 4px;"/></td>
                    </tr>
                </table>
                </form>
            </div>
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
