<%-- 
    Document   : insufficientamount
    Created on : 24 May 2022, 11:26:45 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insufficient Amount Page</title>
          
        <style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
    </head>
    <body>
        <h1>Insufficient Amount!</h1>

<p>Click on the "x" symbol to close the alert message.</p>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Warning!</strong> Insufficient amount!!! Please enter a valid amount.
</div>
<button style="background-color: greenyelllow"><a href="transfer.jsp">[Back]</a></button>
    </body>
</html>
