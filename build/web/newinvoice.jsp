<%-- 
    Document   : newinvoice
    Created on : 27 May 2022, 1:38:38 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Invoice</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
       
      
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <link href="styleinvoice2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
     
          <section>
    
        <div class = "contact-bg">
        <h2>New Invoice</h2>
        <div class = "line">
          <div></div>
          <div></div>
          <div></div>
        </div>
        <p class = "text">Please fill the form below:</p>
      </div>
            </section>
        
        <div class="container">
        
            <div class="row">
                <div>
                    <form action="CreateInvoiceServlet.do" method="POST">
                                                
                        
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" id="name" class ="form-control"  name="name" placeholder="Enter Your name" required>
                            
                         </div>
                         
                        <div class="form-group">
                            <label>Company Name</label>
                            <input type="text" id="company" class ="form-control"  name="compname" placeholder="Enter Your Company name" required>

                         </div>
                         
                        <div class="form-group">
                            <label>Description of Action/Product</label>
                            <input type="text" id="description" class ="form-control"  name="description" placeholder="Description " required>
                            
                         </div>
                          <div class="form-group">
                            <label>Address:</label>
                            <input type="text" id="address" class ="form-control"  name="address" placeholder="Enter Your Address ">
                            
                         </div>
                          <div class="form-group">
                            <label>Payment Method:(Visa Card/PayPal/Savings account/Debit card)</label>
                            <input type="text" id="payment" class ="form-control"  name="payment" placeholder="Enter Mode of Pament" required>
                            
                         </div>
                        <div class="form-group">
                            <label>Delivery Date:</label>
                            <input type="text" id="deliver" class ="form-control" id="fname" name="ddate" placeholder="Deliver date" required>
                            
                         </div>
                        <div class="form-group">
                            <label>Amount:</label>
                            <input type="text"  id="amount" class ="form-control"  name="amount" placeholder="Enter the amount" required>
                            
                         </div>
                         <div class="form-group">
                            <label>Quantity:</label>
                            <input type="text"  id="quantity" class ="form-control"  name="quantity" placeholder="Enter the Quantity" required>
                            
                         </div>
                        
                        <div class="form-group">
                             <button type="submit" id=submit" class="btn btn-success"   style="background-image: linear-gradient(120deg, hsl(192, 70%, 51%),hsl(136, 65%, 51%));">Submit</a></button>
                         </div>
                       
                        
                    </form> 
                    
                </div>
                
            </div>
            
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
        
        console.log("it working!");
        
       
      // Let's define our first command. First the text we expect, and then the function it should call
      let commands = {
       
        'write name *tag': function(variable){
            let name1 = document.getElementById("name");
            name1.value = variable; 
        },
        'company name *tag': function(variable){
            let company = document.getElementById("company");
            company.value = variable; 
        },
        'description *tag': function(variable){
            let description = document.getElementById("description");
              description.value=variable; 
        },
        'address *tag': function(variable){
            let address = document.getElementById("address");
            address.value = variable; 
        },
         'payment *tag': function(variable){
            let payment = document.getElementById("payment");
            payment.value = variable; 
        },
         'delivery date *tag': function(variable){
            let deliver = document.getElementById("deliver");
            deliver.value = variable; 
        },
        'amount *tag': function(variable){
            let amount = document.getElementById("amount");
            amount.value = variable.split(",").join(""); 
        },
        'quantity *tag': function(variable){
            let quantity = document.getElementById("quantity");
            quantity.value = variable; 
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
