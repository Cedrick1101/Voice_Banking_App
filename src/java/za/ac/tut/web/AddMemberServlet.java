package za.ac.tut.web;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
public class AddMemberServlet extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String membername=request.getParameter("membername");
        ///initialise the request 
        request.setAttribute("membername",membername);
        
        RequestDispatcher dispa=request.getRequestDispatcher("invoiceoutcome.jsp");
         dispa.forward(request, response);
        
    }

    

}
