/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.Account;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class VerifyCodeServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
         HttpSession session = request.getSession();
         
            User user = (User) session.getAttribute("user");
            
             
            
            String code = request.getParameter("authcode");
            
         
                     
            if(code.equals(user.getCode())){
             
               userFacade.addUser(user);
            response.sendRedirect("login.html");
                
            }else{
                //out.println("incorrect verification code!");
                 response.sendRedirect("invalidauthentication.jsp");
            }
            
    }
 
}
