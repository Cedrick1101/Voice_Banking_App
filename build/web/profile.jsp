<%-- 
    Document   : profile
    Created on : 24 May 2022, 11:05:08 AM
    Author     : acer
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="styleprofil.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background-image: linear-gradient(
    120deg,
    hsl(192, 70%, 51%),
    hsl(136, 65%, 51%));">
<!-- partial:index.partial.html -->

<form action="EditProfileServlet.do" method="POST">
<div class="box-form">
	<div class="left">
		<div class="overlay">
                
                <p style="color:black"> </p>
		<div class="buttn">			
			</div>
		</div>
	</div>
	
	<%
       String email = (String)session.getAttribute("email");
       String name = (String)session.getAttribute("name");
       String surname = (String)session.getAttribute("surname");
       String phoneNum = (String)session.getAttribute("phoneNum"); 
       String password = (String)session.getAttribute("password");
       String confirmPass = (String)session.getAttribute("confirmPass");
       String accountType =(String)session.getAttribute("accountType");
       
     
       
        %>
		<div class="right">
		<h5>View profile</h5> 
		<div class="inputs">
                    
                    <input type="email" name="id" value="<%=email%>">
			<input type="text" name="name" value="<%=name%>">
                        <input type="text" name="surname" value="<%=surname%>">
                        <input type="text" name="phoneNum" value="<%=phoneNum%>">
                        <input type="text" name="accountType" value="<%=accountType%>">
			<br>
			<input type="password" name="password" value="<%=password%>">
			<input type="password" name="confirmPass" value="<%=confirmPass%>">
		</div>
			
			<br><br>
			
		<div class="remember-me--forget-password">
				<!-- Angular --> 	
		</div> 
			<br>
                        <button style="background-image: linear-gradient(
    120deg,
    hsl(192, 70%, 51%),
    hsl(136, 65%, 51%));"><a href="menu.html" style="text-decoration: none">Ok</a></button>
	</div>
	
</div>
<!-- partial -->
  </form>
                
                 <script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js"></script>

    
    <script>
        if (annyang) {
console.log("we have annyang");
var commands = {
'go to menu': menu,
'Okay': okay
}

function menu() {
console.log("Menu");
window.location.href = "http://localhost:8080/VoiceBankingApp/menu.html";
}
function okay() {
console.log("Okay");
window.location.href = "http://localhost:8080/VoiceBankingApp/menu.html";
}

// Add Commands
annyang.addCommands(commands);

// Start listening
annyang.start();
}
    </script>  
       
    </body>
</html>
