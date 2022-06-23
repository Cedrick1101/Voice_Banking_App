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
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class DeleteUserServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        String email = request.getParameter("id");
        String location = "usernotfound.jsp";
        
        User user = userFacade.findUser(email);
        
        if(user!=null){
            userFacade.removeUser(user);
            location = "userremoved.jsp";
        }
       RequestDispatcher disp = request.getRequestDispatcher(location);
       disp.forward(request, response);
    }

    

}
