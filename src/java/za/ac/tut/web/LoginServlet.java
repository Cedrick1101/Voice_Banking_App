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
public class LoginServlet extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         //get the current session
       HttpSession session = request.getSession();
        
       User user = (User) session.getAttribute("user");
        
        String id = request.getParameter("id");
        String password = request.getParameter("password");
          
       if(id.equals("admin") && password.equals("1111")||id.equals("ced") && password.equals("1234")){
          RequestDispatcher disp = request.getRequestDispatcher("adminmenu.html");
           disp.forward(request, response);
       
       }else if(id.equals(user.getId()) && password.equals(user.getPassword())){
           RequestDispatcher disp = request.getRequestDispatcher("menu.html");
          disp.forward(request, response);
           
       }else{
          RequestDispatcher disp = request.getRequestDispatcher("invaliduser.jsp");
           disp.forward(request, response);
       }
     
      
      
      }
       
       
       
        
       
       
       
    }


