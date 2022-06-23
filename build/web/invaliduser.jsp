<%-- 
    Document   : invaliduser
    Created on : 27 May 2022, 2:41:13 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User not found Page</title>
    </head>
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

<h2>Invalid User</h2>

<p>Click on the "x" symbol to close the alert message.</p>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Warning!</strong> User requested is not found!!! Please Click here to go back .
</div>
<button style="background-color: greenyelllow"><a href="login.html">[Back]</a></button>
</body>
</html>


