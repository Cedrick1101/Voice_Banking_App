/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class EditUserServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        HttpSession session =  request.getSession();
        
        String email = request.getParameter("id");
        String newName = request.getParameter("name");
        String newPhoneNum = request.getParameter("phoneNum");
        String newSurname = request.getParameter("surname");
            
        User user=userFacade.findUser(email);
        String location = "usernotfound.jsp";
        
      if(user != null){
          
          user.setName(newName);
          user.setPhoneNum(newPhoneNum);
          user.setSurname(newSurname);
           userFacade.editUser(user);
            
            location = "userfound.jsp";
        }
        RequestDispatcher disp = request.getRequestDispatcher(location);
        disp.forward(request, response);
    }

   
}
