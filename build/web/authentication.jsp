<%-- 
    Document   : authentication
    Created on : 19 May 2022, 6:29:28 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication Page</title>
        <link rel="stylesheet" href="styleotp.css">
          <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
     
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    </head>
    <body>
         <section>
    
        <div class = "contact-bg">
        <h2>VERIFICATION</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">Please enter below the verification code sent to your email!</p>
      </div>
            </section>
   
        
         <form action="VerifyCodeServlet.do" method="POST">
            <input maxlength='7' value='' name="authcode" id="code">
            <a href="#"><button style="background-image: linear-gradient(
    120deg,
    hsl(192, 70%, 51%),
    hsl(136, 65%, 51%))"   class="btn">Submit</button></a>    
        </form>
         
         
<script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js"></script>
<script>
    if (annyang) {
        
        console.log("it working!");
        
       
      // Let's define our first command. First the text we expect, and then the function it should call
      let commands = {
       
        'write pin *tag': function(variable){
            let pin = document.getElementById("code");
            pin.value = variable.split(" ").join(""); 
        }
      };
    
      // Add our commands to annyang
      annyang.addCommands(commands);
      
      // Start listening. You can call this here, or attach this call to an event, button, etc.
      annyang.start();
      
      
    }
    </script>
    </body>
</html>
