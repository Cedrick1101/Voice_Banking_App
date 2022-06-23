<%-- 
    Document   : transfer_outcome
    Created on : 24 May 2022, 11:36:33 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Outcome Page</title>
          <link rel="stylesheet" href="style5.css">
    <script src="https://kit.fontawesome.com/97fe9846b5.js" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
       <link href="style5.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" /> 
    </head>
    <body>
        
       
    <section>
    
        <div class = "contact-bg">
        <h2>Transaction results</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
      </div>
            </section>   
        
        <%
        Double balance = (Double) session.getAttribute("balance");
        Integer targetAccount = (Integer) session.getAttribute("targetAccount");
        Double amountToSend = (Double)session.getAttribute("amountToSend");
        Double remainingAmount = (Double)session.getAttribute("remainingAmount"); 
        String accountType = (String) session.getAttribute("accountType");
        Integer accountNum = (Integer) session.getAttribute("accountNum");
        String beneficiaryName = (String) session.getAttribute("beneficiaryName");
        
        %>
        
       
         <section>
        <div class="left">
        <h1>RESULTS:</h1>

        <div class="box">
            <img src="img/wireframing.jpg" alt="">
           
           
            <i class="fas fa-arrow-right"></i>
        </div>

        <h1>View transaction details:</h1>
       
        <div class="password_box">
            <label>The beneficiary name was:</label>
                <input type="text" name="beneficiaryName" value="<%=beneficiaryName%>" id="password"/>
           <label>The beneficiary account number was:</label>
                <input type="text" name="targetAccount" value="<%=targetAccount%>" id="password"/>
           <label>The amount sent was:</label>
            <input type="text" name="amountToSend" value="<%=amountToSend%>" id="password"/>
            <!--<i class="fas fa-eye" id="changeicon" onclick="viewPassword()"></i>-->
        </div>
       

        <button style="background-image: linear-gradient(120deg, hsl(192, 70%, 51%),hsl(136, 65%, 51%)
  );"> <a href="transfer.jsp">Back</a></button>
    </div>

    <div class="right">
        <img src="img/logo.jpg" alt="">
         <div class="order_details">
            <h4>Status:</h4>
            <i class="far fa-check-circle" id="status"></i>
            <h4>Paid</h4>
            
        </div>
        <h2><%=accountType%></h2>
        <h2>Account No:<%=accountNum%></h2>
        <h2>Balance:R<%=balance%></h2>
        <h2>Available:R<%=remainingAmount%></h2>
        
    </section>
     
    <script src="./js/main.js"></script>
    
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
          <a href="menu.html">Click here to go back to menu</a>
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
'go to menu': menu,
'back': back
}

function menu() {
console.log("Menu");
window.location.href = "http://localhost:8080/VoiceBankingApp/menu.html";
}
function back() {
console.log("Back");
window.location.href = "http://localhost:8080/VoiceBankingApp/transfer.jsp";
}

// Add Commands
annyang.addCommands(commands);

// Start listening
annyang.start();
}
    </script>   
    </body>
</html>
