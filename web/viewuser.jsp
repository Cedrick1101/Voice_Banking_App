<%-- 
    Document   : viewuser
    Created on : 27 May 2022, 1:03:08 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Users Page</title>
    </head>
     <style>
input[type=text]{
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
                
            <h3>VIEW ALL USERS</h3>

<div>
  <form action="GetAllServlet.do" method="POST">
    
      <label for="email"></label>
   

    <center><input type="submit" value="View"></center>
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
      
            
            
        </form>
        
        
        
    </body>
</html>
