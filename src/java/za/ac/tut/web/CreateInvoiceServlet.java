/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class CreateInvoiceServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //get the paramter
        String name=request.getParameter("name");
          String description=request.getParameter("description");
     
          String compname=request.getParameter("compname");
          String address=request.getParameter("address");
          String payment=request.getParameter("payment");
          String ddate=request.getParameter("ddate");
          String amount=request.getParameter("amount");
          String quantity=request.getParameter("quantity");
          
          
          //initialise the request 
         request.setAttribute("name",name);
        request.setAttribute("description", description);
        request.setAttribute("compname", compname);
        request.setAttribute("address", address);
        request.setAttribute("payment", payment);
        request.setAttribute("ddate", ddate);
        request.setAttribute("amount", amount);
        request.setAttribute("quantity", quantity);
          //initialiseRequest(request,name,description,compname,address,payment,ddate,amount,quantity);
          //send message 
          
         
          RequestDispatcher dispa=request.getRequestDispatcher("newinvoiceoutcome.jsp");
          
          dispa.forward(request, response);
          
          
    }

   
}
