<%-- 
    Document   : viewbalance
    Created on : 24 May 2022, 10:22:54 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Balance Page</title>
        <script src="https://kit.fontawesome.com/97fe9846b5.js" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
       <link href="style5.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    </head>
    <%
        Double balance = (Double) session.getAttribute("balance");
        Integer accountNum = (Integer) session.getAttribute("accountNum");
        String accountType =(String) session.getAttribute("accountType");
        %>
    <body>
        
          
    <section>
    
        <div class = "contact-bg">
        <h2>Balance</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
      </div>
            </section>
        
        
        
        
        
        
        
        
      <div class="right">
        <img src="img/logo.jpg" alt="">
        <h2><%=accountType%></h2>
        <h2>Account Number: <%=accountNum%></h2>
        <h2>Balance: R<%=balance%> </h2>
      </div>
      
      <footer class="footer">
      <div class="footer-container">
        <div class="social-container">
          <img src="./images/icon-facebook.svg" alt="" />
          <img src="./images/icon-instagram.svg" alt="" />
          <img src="./images/icon-twitter.svg" alt="" />
          <img src="./images/icon-pinterest.svg" alt="" />
        </div>
        <div class="menu">
          <a href="#">About us</a>
          <a href="#">Contact us</a>
          <a href="#">Blog</a>
        </div>
        <div class="menu">
          <a href="#">Carriers</a>
          <a href="#">Support</a>
          <a href="#">Privacy Policy</a>
        </div>
       
      </div>
     </div>
 </footer>
        
         <script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js"></script>

    
    <script>
        if (annyang) {
console.log("we have annyang");
var commands = {
'go to menu': menu
}

function menu() {
console.log("Menu");
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
