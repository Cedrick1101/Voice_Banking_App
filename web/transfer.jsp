<%-- 
    Document   : transfer
    Created on : 24 May 2022, 10:57:06 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Page</title>
     
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
        <h2>Transaction</h2>
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
        Integer accountNum = (Integer) session.getAttribute("accountNum");
        
        %>
        
        <form action="TransferServlet.do" method="POST">
         <section>
        <div class="left">
        <h2>Payment</h2>

        <div class="box">
            <img src="img/wireframing.jpg" alt="">
            <h3>Area for Payment and Transfer</h3>
            <h6>Pay|Transfer</h6>
            <i class="fas fa-arrow-right"></i>
        </div>

        <h1>Fill in the Information below:</h1>
        <p>Enter a beneficiary name and amount below .
            Keep track of payment and access downloads at any time.
        </p>
        <div class="password_box">
            <label>Beneficiary</label>
                <input type="text" id="name" name="beneficiaryName" id="password"/>
           <label>Target account</label>
                <input type="text" id="account" name="targetAccount" id="password"/>
           <label>Amount</label>
            <input type="text" id="amount" name="amountToSend" id="password"/>
            <!--<i class="fas fa-eye" id="changeicon" onclick="viewPassword()"></i>-->
        </div>
       
        <span>only digits allowed</span>
        <button style="background-image: linear-gradient(120deg, hsl(192, 70%, 51%),hsl(136, 65%, 51%)); ">Pay</button>
    </div>

    <div class="right">
        <img src="img/logo.jpg" alt="">
        <h2>Account number:<%=accountNum%></h2>
        <div class="order_details">
            <h4>Status:</h4>
            <i class="far fa-check-circle" id="status"></i>
            <h4>Payment in progress</h4>
            
        </div>

    
        
        
        <h4>Go To Invoice </h4>
        <p>Click<a href="newinvoice.jsp"> here </a>to create Special Invoices for Companies.</p>
    </div>
    </section>
        </form>
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
        
        console.log("it working!");
        
       
      // Let's define our first command. First the text we expect, and then the function it should call
      let commands = {
       
        'beneficiary name *tag': function(variable){
            let name = document.getElementById("name");
            name.value = variable; 
        },
        'account number *tag': function(variable){
            let email = document.getElementById("account");
            email.value = variable.split(" ").join("");
        },
         'amount *tag': function(variable){
            let amount = document.getElementById("amount");
            amount.value = variable.split(",").join(""); 
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
