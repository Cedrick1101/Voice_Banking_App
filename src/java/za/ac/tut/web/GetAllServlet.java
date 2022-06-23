/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class GetAllServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      List<User>users = userFacade.findAllUsers();
      String location = "usernotfound.jsp";
      
      if(users!=null){
          location = "viewusers_outcome.jsp";
          request.setAttribute("users", users);
      }
      
      RequestDispatcher disp = request.getRequestDispatcher(location);
      disp.forward(request, response);
        
    }
    

}
