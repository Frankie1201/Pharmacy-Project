

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login</title>
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
        <center>
        <div class="LogHead">
        <h5>Customer Login</h5>
        </div>
        
        <form action="CuLogin" method="POST">
        <table border="0" cellpadding="10">
                <tr>
                    <td>Email</td>
                    <td colspan="2"><input type="text" name="email" value="" style=" width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td colspan="2"><input type="password" name="password" value="" style=" width: 300px; padding: 12px 20px; margin: 8px 0; display: inline-block; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="submit" style="background-color: #0099ff; border-style: none; width: 100px; color: white; padding: 15px 32px; text-align: center; display:inline-block; font-size: 14px; margin: 4px 2px; border-radius: 4px"/></td>
                    <td><input type="reset" value="clear" style="background-color: #0099ff; border-style: none; width: 100px; color: white; padding: 15px 32px; text-align: center; display:inline-block; font-size: 14px; margin: 4px 2px; border-radius: 4px" /></td>
                </tr>
        </table>
        </form>
        </center>
            <br>
        <br>
        <br>
        <br>
    
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
