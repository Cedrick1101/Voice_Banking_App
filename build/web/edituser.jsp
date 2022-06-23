<%-- 
    Document   : edituser
    Created on : 26 May 2022, 10:21:25 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User Page</title>
    </head>
     <style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
    <body>
       
            
           <h3>Edit USER</h3>

<div>
 <form action="EditUserServlet.do" method="POST">
      
       <label for="email"></label>
    <input type="text" id="fname" name="id" placeholder="Email address of the user">
    
    <label for="fname"></label>
    <input type="text" id="fname" name="name" placeholder="New name of the user">

    <label for="lname"></label>
    <input type="text" id="lname" name="surname" placeholder="New surname of the user">
    
 <label for="phonenum"></label>
    <input type="text" id="fname" name="phoneNum" placeholder="New phone number of the user">

    <center><input type="submit" value="Submit"></center>
    
  </form>
</div>
             <script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js"></script>

    
    <script>
        if (annyang) {
console.log("we have annyang");
var commands = {
'go to menu': menu
}
function menu() {
console.log("Menu");
window.location.href = "http://localhost:8080/VoiceBankingApp/adminmenu.html";
}


// Add Commands
annyang.addCommands(commands);

// Start listening
annyang.start();
}
    </script> 
      
  
        
    </body>
</html>
