
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/style.css">
    </head>
    <body>
        <div class="homehead">
            <h1>NFS Pharmacy</h1>
        </div>
        <div class="navbar">
            <nav>
                <a href="home.html">Home</a>
                |
                <a href="about.html">About Us</a>
                |
                <a href="locations.html">Store Locations</a>
                <div class="navcon">
                    <a href="contact.html">Contact Us</a>
                </div>
            </nav>
        </div>
        <br>
        <br>
        <div class="RegForm">
            <div class="LogHead">&nbsp;&nbsp;&nbsp;Register with NFS Pharmacy</div>
        <div class="form">
        <form action="CustReg" method="get">
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
    <div class="footer">
        Copyright of NFS Pharmacy
        <div class="social">
            <a href="https://www.facebook.com" class="fab fa-facebook-square"></a>
            <a href="https://www.instagram.com" class="fab fa-instagram-square"></a>
            <a href="https://twitter.com" class="fab fa-twitter-square"></a>
            <a href="https://github.com" class="fab fa-github-square"></a>
        </div>
    </div>
    </body>
</html>
