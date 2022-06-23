<%-- 
    Document   : newinvoiceoutcome
    Created on : 17 May 2022, 6:32:23 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <!-- Custom Style -->
    <link rel="stylesheet" href="styleinvoice3.css">
     <script src="js.js" type="text/javascript"></script>
    <title>Invoice..!</title>
</head>


<%
    String name=(String)request.getAttribute("name");
      String description=(String)request.getAttribute("description");
          String compname=(String)request.getAttribute("compname");
          String address=(String)request.getAttribute("address");
          String payment=(String)request.getAttribute("payment");
          String ddate=(String)request.getAttribute("ddate");
          String amount=(String)request.getAttribute("amount");
          String quantity=(String)request.getAttribute("quantity");
         Integer totAmountDue=(Integer)Integer.parseInt(quantity) * Integer.parseInt(amount);
       
    
    %>
<body>
    <div class="my-5 page" size="A4">
        <div class="p-5">
            <section class="top-content bb d-flex justify-content-between">
                <div class="logo">
                    <a href="menu.html"><img src="logo.png" alt="" class="img-fluid"> </a>
                </div>
                <div class="top-left">
                    <div class="graphic-path">
                        <p>Invoice</p>
                    </div>
                    <div class="position-relative">
                        <p>**********</p>
                    </div>
                </div>
            </section>

            <section class="store-user mt-5">
                <div class="col-10">
                    <div class="row bb pb-3">
                        <div class="col-7">
                            <p>Supplier,</p>
                            <h2><%=compname%></h2>
                            <p class="address">208 Hamilton street,<br> Arcadia 0083 </p>
                           
                        </div>
                        <div class="col-5">
                            <p>Client,</p>
                            <h2><%=name%></h2>
                            <p class="address">  <%=address%> <br> </p>
                           
                        </div>
                    </div>
                    <div class="row extra-info pt-3">
                        <div class="col-7">
                            <p>Payment Method: <span><%=payment%></span></p>
                            <p>Order Number: <span>#868</span></p>
                        </div>
                        <div class="col-5">
                            <p>Deliver Date: <span><%=ddate%></span></p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-area mt-4">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td> Description/Product</td>
                            <td>Amount</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="media">
                                  
                                    <div class="media-body">
                                        <p class="mt-0 title"><%=description%></p>
                                      
                                    </div>
                                </div>
                            </td>
                            <td><%=amount%>$</td>
                            <td><%=quantity%></td>
                            <td><%=totAmountDue%>$</td>
                        </tr>
                      
                    </tbody>
                </table>
            </section>

            <section class="balance-info">
                <div class="row">
                    <div class="col-8">
                        <p class="m-0 font-weight-bold"> Note: </p>
                        <p>The invoice is a technologic print form to show your transactions and payments that were performed.</p>
                    </div>
                    <div class="col-4">
                        <table class="table border-0 table-hover">
                            <tr>
                                <td>Sub Total:</td>
                                <td>800$</td>
                            </tr>
                            <tr>
                                <td>Tax:</td>
                                <td>15$</td>
                            </tr>
                            <tr>
                                <td>Deliver:</td>
                                <td>10$</td>
                            </tr>
                            <tfoot>
                                <tr>
                                    <td>Total:</td>
                                    <td><%=totAmountDue+25%>$</td>
                                </tr>
                            </tfoot>
                        </table>

                        <!-- Signature -->
                        <div class="col-12">
                            <img src="signature.png" class="img-fluid" alt="">
                            <p class="text-center m-0"> Director Signature </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Cart BG -->
            <img src="cart.jpg" class="img-fluid cart-bg" alt="">

            <footer>
                <hr>
                <p class="m-0 text-center">
                    View THis Invoice Online At - <a href="#!"> invoice/smarttech.com/#868 </a>
                </p>
                <div class="social pt-3">
                    <span class="pr-2">
                        <i class="fas fa-mobile-alt"></i>
                        <span>08123456789</span>
                    </span>
                    <span class="pr-2">
                        <i class="fas fa-envelope"></i>S
                        <span>christondamba@gmail.com</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-facebook-f"></i>
                        <span>/OCE.7264</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-youtube"></i>
                        <span>/ChristJ</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-github"></i>
                        <span>/OndambaCE</span>
                    </span>
                </div>
            </footer>
        </div>
    </div>

                                    <button onClick="HtmlToPdf()">HTML TO PDF Convert</button>
                                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js">  
                                        </script>
                                       
</body>
</html>
