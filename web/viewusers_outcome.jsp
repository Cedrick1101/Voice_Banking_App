<%-- 
    Document   : viewusers_outcome
    Created on : 27 May 2022, 1:18:19 AM
    Author     : acer
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Users Outcome Page</title>
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
        <h3>ALL USERS</h3>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text"> <h4>See below the list of all users:</h4></p>
      </div>
            </section>
        <%
            List<User>users = (List<User>) request.getAttribute("users");
            User user;
            Double balance;
            String accountType,name,surname,phoneNum,email;
            Integer accountNum;
            Date date;
            
         %>
        
         <%
            for(int i=0; i<users.size();i++){
                
                user = users.get(i);
                name = user.getName();
                surname =user.getSurname();
                phoneNum = user.getPhoneNum();
                email = user.getId();
                date = user.getCreationDate();
                balance = user.getAccount().getBalance();
                accountType= user.getAccount().getAccountType();
                accountNum = user.getAccount().getId();
               
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
         
            
    <%
            }
            
            %>
            
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
    </body>
</html>
