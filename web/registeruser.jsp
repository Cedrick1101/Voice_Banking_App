<%-- 
    Document   : registeruser
    Created on : 26 May 2022, 11:02:19 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
         <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./styleone.css">
<link href="style3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-image: linear-gradient(
    120deg,
    hsl(192, 70%, 51%),
    hsl(136, 65%, 51%));">
<!-- partial:index.partial.html -->

<form action="RegisterServlet.do" method="POST" id="signUp">
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h1><span style="color:#006400">Hey Smart</span><span style="color:blue">Intel</span>!!!</h1>
                
                <p style="color:black">Welcome To our Website Bank App .It is a easy bank App use to effectuate transaction and print invoices of <br>
                the Customer and the employees product and  </p>
		<div class="buttn">			
			<a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i> Login with Facebook</a>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> Login with  Twitter  </a>
		</div>
		</div>
	</div>
	
	
		<div class="right">
		<h5>SIGN UP</h5>
		<p>Already have an account? <a href="login.html">Login</a></p>
		<div class="inputs">
                    
                    <input type="email" id="email" name="id" placeholder="Enter your email address" required>
			<input type="text"  id="name" name="name" placeholder="Enter your name"required>
                        <input type="text" id="surname" name="surname" placeholder="Enter your surname"required>
                        <input type="text" id="phoneNum" name="phoneNum" placeholder="Enter your phone number" required>
                        <input type="text" id="accountType" name="accountType" placeholder="Savings or Easy account" required>
                        <input type="text" id="balance" name="balance" placeholder="Enter your balance"required>
			<br>
                        <input type="password" id="password" name="password" placeholder="Enter your password" required>
                        <input type="password" id="confirmPass" name="confirmPass" placeholder="Confirm your password" required>
		</div>
			
			<br><br>
			
		<div class="remember-me--forget-password">
				<!-- Angular -->
	<label>
		<input type="checkbox" name="item" checked/>
		<span class="text-checkbox">Remember me</span>
	</label>
			
		</div>
			
			
                        <button style="background-image: linear-gradient(120deg, hsl(192, 70%, 51%),hsl(136, 65%, 51%)
  );">Sign Up</button>
	</div>
	
</div>
<!-- partial -->
  </form>

<script src="//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js"></script>
<script>
    if (annyang) {
        
        console.log("it working!");
        
       
      // Let's define our first command. First the text we expect, and then the function it should call
      let commands = {
       
        'write name *tag': function(variable){
            let name1 = document.getElementById("name");
            name1.value = variable; 
        },
        'surname *tag': function(variable){
            let surna = document.getElementById("surname");
            surna.value = variable; 
        },
        'email address *tag': function(variable){
            let emailAdd = document.getElementById("email");
            emailAdd.value = variable.split(" ").join(""); 
        },
        'account type *tag': function(variable){
            let account = document.getElementById("accountType");
            account.value = variable; 
        },
         'phone number *tag': function(variable){
            let phone = document.getElementById("phoneNum");
            phone.value = variable.split(" ").join(""); 
        },
        'write password *tag': function(variable){
            let pass = document.getElementById("password");
            pass.value = variable; 
        },
        'write confirm password *tag': function(variable){
            let confirmPassword = document.getElementById("confirmPass");
            confirmPassword.value = variable; 
        },
        
         'write balance *tag': function(variable){
             let bal = document.getElementById("balance");
             bal.value = variable;
         },
         'sign *tag': function(variable){
             let signUp = document.getElementById("signUp");
             document.querySelector('signUp').click();
             
              
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
