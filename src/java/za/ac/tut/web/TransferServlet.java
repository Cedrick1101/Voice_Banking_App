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
import javax.servlet.http.HttpSession;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class TransferServlet extends HttpServlet {

   

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession session = request.getSession();
         
         
         String beneficiaryName = request.getParameter("beneficiaryName");
         Integer targetAccount = Integer.parseInt(request.getParameter("targetAccount"));
         Double amountToSend = Double.parseDouble(request.getParameter("amountToSend"));
         
         //create user
         User user = (User) session.getAttribute("user");
         
         if(amountToSend <= user.getAccount().getBalance()){
             
             Double remainingAmount = user.getAccount().getBalance() - amountToSend;
             session.setAttribute("remainingAmount", remainingAmount);
             session.setAttribute("beneficiaryName", beneficiaryName);
             session.setAttribute("targetAccount", targetAccount);
             session.setAttribute("amountToSend", amountToSend);
             
            RequestDispatcher disp = request.getRequestDispatcher("transfer_outcome.jsp");
            disp.forward(request, response);  
             
             
         }else{
             RequestDispatcher disp = request.getRequestDispatcher("insufficientamount.jsp");
             disp.forward(request, response);
         }
        
    }


}
