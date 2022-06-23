<%-- 
    Document   : loginsecurity
    Created on : 15 Jun 2022, 11:13:18 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN Security Page</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form action="j_security_check" method="POST">
            <table>
             
                
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="j_username"  required="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="text" name="j_password"  required=""/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="SEND" /></td>
                    </tr>
                
            </table>

        </form>
    </body>
</html>
