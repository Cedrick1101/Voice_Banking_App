<%-- 
    Document   : invoiceoutcome
    Created on : 15 May 2022, 1:56:55 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice Management App|Welcome page </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="styleinvoice1.css">
</head>


<%
    String memberName=(String)request.getAttribute("membername");
      
    %>
   <body>
    <div class="container-fluid p-0">
        <div class="d-flex flex-row pt-4 pb-3 px-4" style="background: white;">
            <i class="fas fa-arrow-left"><a href="goback.html"> </a></i>
            <div class="d-flex flex-row flex-grow-1 justify-content-between">
                <div class="d-flex flex-column ml-5 pl-3">
                    <span class="cust-invoice">Customer Invoice</span>
                    <span class="heading mt-3">Landing Page Design</span>
                    <span class="category px-1 mt-2">webdesign</span>
                    <span class="company mt-2">Askon Tech Ltd</span>
                </div>
                <div class="d-flex flex-column align-self-center">
                    <span class="mb-3 label">Progress</span>
                    <div class="progress"></div>
                </div>
                <div class="d-flex flex-column align-self-center">
                    <span class="mb-3 label">Members</span>
                    <div class="d-flex flex-row">
                        <div class="member mx-1 red">ZS</div>
                        <div class="member mx-1 blue">XM</div>
                        <div class="member mx-1 purple">HW</div>
                        <div class="member mx-1 purple"><%=memberName%></div>
                        <div class="member mx-1 add">
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>
                </div>
            </div>
            <i class="fas fa-ellipsis-h"></i>
        </div>

        <div class="d-flex flex-row menu">
            <span><a href="#">Descriptions</a></span>
            <span><a href="#">Milestone</a></span>
            <span class="active"><a href="#">Invoice</a></span>
        </div>
        <div class="mx-5 px-5">
            <table class="table table-borderless row-gap">
                <tbody>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status unpaid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Mar</span>
                                <span class="date">17</span>
                            </div>
                        </td>
                        <td>34534</td>
                        <td>Askon Tech Ltd</td>
                        <td>Webpage design</td>
                        <td>
                            <div class="unpaid">UNPAID</div>
                        </td>
                        <td>
                            <div class="unpaid text-right mr-5">$500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status drafted-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Apr</span>
                                <span class="date">21</span>
                            </div>
                        </td>
                        <td>34537</td>
                        <td>Askon Tech Ltd</td>
                        <td>Webpage mobile site design</td>
                        <td>
                            <div class="drafted">DRAFTED</div>
                        </td>
                        <td>
                            <div class="drafted text-right mr-5">$12,500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status paid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">May</span>
                                <span class="date">25</span>
                            </div>
                        </td>
                        <td>34550</td>
                        <td>Askon Tech Ltd</td>
                        <td>Marketing web design</td>
                        <td>
                            <div class="paid">PAID</div>
                        </td>
                        <td>
                            <div class="paid text-right mr-5">$50</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status paid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Jun</span>
                                <span class="date">27</span>
                            </div>
                        </td>
                        <td>34561</td>
                        <td>Askon Tech Ltd</td>
                        <td>Social media pages</td>
                        <td>
                            <div class="paid">PAID</div>
                        </td>
                        <td>
                            <div class="paid text-right mr-5">$2,500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status unpaid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Mar</span>
                                <span class="date">17</span>
                            </div>
                        </td>
                        <td>34534</td>
                        <td>Askon Tech Ltd</td>
                        <td>Webpage design</td>
                        <td>
                            <div class="unpaid">UNPAID</div>
                        </td>
                        <td>
                            <div class="unpaid text-right mr-5">$500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status drafted-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Apr</span>
                                <span class="date">21</span>
                            </div>
                        </td>
                        <td>34537</td>
                        <td>Askon Tech Ltd</td>
                        <td>Webpage mobile site design</td>
                        <td>
                            <div class="drafted">DRAFTED</div>
                        </td>
                        <td>
                            <div class="drafted text-right mr-5">$12,500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status paid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">May</span>
                                <span class="date">25</span>
                            </div>
                        </td>
                        <td>34550</td>
                        <td>Askon Tech Ltd</td>
                        <td>Marketing web design</td>
                        <td>
                            <div class="paid">PAID</div>
                        </td>
                        <td>
                            <div class="paid text-right mr-5">$50</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                    <tr class="invoice-row" valign="middle">
                        <td>
                            <div class="ml-3 status paid-bg"></div>
                        </td>
                        <td>
                            <div class="d-flex flex-column align-items-center">
                                <span class="month">Jun</span>
                                <span class="date">27</span>
                            </div>
                        </td>
                        <td>34561</td>
                        <td>Askon Tech Ltd</td>
                        <td>Social media pages</td>
                        <td>
                            <div class="paid">PAID</div>
                        </td>
                        <td>
                            <div class="paid text-right mr-5">$2,500</div>
                        </td>
                        <td>
                            <i class="fas fa-ellipsis-h">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="d-flex flex-row justify-content-end position-sticky pr-5 pb-5" style="right: 0; bottom:0;">
            <div class="add-invoice d-flex flex-column align-items-center p-3">
                <i class="fas fa-plus"></i>
                            <span class="invoice-label mt-3">Invoice</span>
        </div>
    </div>
    </div>
</body>
</html>
