<%-- 
    Document   : userinfofound
    Created on : 26 May 2022, 11:47:33 AM
    Author     : acer
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Account"%>
<%@page import="za.ac.tut.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find User Outcome Page</title>
          <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
       <link href="stylefinduser.css" rel="stylesheet" type="text/css"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />

    </head>
    <body>
        <section>
    
        <div class = "contact-bg">
        <h3>USER INFORMATION</h3>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text"> <h4>See below the information of the user:</h4></p>
      </div>
            </section>
        <% User user = (User) request.getAttribute("user");
           String email = user.getId();
           String name = user.getName();
           String surname = user.getSurname();
           String phoneNum = user.getPhoneNum();
           Date date = user.getCreationDate();
           Double balance = user.getAccount().getBalance();
           String accountType = user.getAccount().getAccountType();
           Integer accountNum = user.getAccount().getId();
          
            
            %>
        
           
            
    <center> <h2> <b><p>
                Email address: <%=email%> <br>
                Name: <%=name%> <br>
                Surname: <%=surname%> <br>
                Phone Number: <%=phoneNum%> <br>
                Balance: <%=balance%> <br>
                Account number: <%=accountNum%> <br>
                Account type: <%=accountType%> <br>
                Creation date:<%=date%>
                
                </p></b> </h2></center>
          
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
          <a href="LogoutServlet.do">Click here to go back to menu</a>
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
