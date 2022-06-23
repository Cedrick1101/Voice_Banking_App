/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.business.SendEmail;
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class EditProfileServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;
    
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   HttpSession session = request.getSession(true);
       
       String newEmail = request.getParameter("id");
       String newName = request.getParameter("name");
       String newSurname = request.getParameter("surname");
       String newPhoneNum = request.getParameter("phoneNum"); 
       String newPassword = request.getParameter("password");
       String newConfirmPass = request.getParameter("confirmPass");
      //  String newAccountType = request.getParameter("accountType");
        User user = userFacade.findUser(newEmail);
        
        if (newName !=null) {
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            String phoneNum = newPhoneNum;
            String confirmPassword= newConfirmPass;
          
            
            //
            user.setConfirmPassword(confirmPassword);
            user.setName(name);
            user.setPhoneNum(phoneNum);
            user.setSurname(surname);
            user.setPassword(password);
          

            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("phoneNum", phoneNum);
            session.setAttribute("password", password);
            session.setAttribute("confirmPass", confirmPassword);

            userFacade.editUser(user);
        }
        if (newSurname !=null) {
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            String phoneNum = newPhoneNum;
            String confirmPassword= newConfirmPass;
            
            //
            user.setConfirmPassword(confirmPassword);
            user.setName(name);
            user.setPhoneNum(phoneNum);
            user.setSurname(surname);
            user.setPassword(password);

            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("phoneNum", phoneNum);
            session.setAttribute("password", password);
            session.setAttribute("confirmPass", confirmPassword);

            userFacade.editUser(user);
        }
        if (newPassword !=null) {
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            String phoneNum = newPhoneNum;
            String confirmPassword= newConfirmPass;
            
            //
            user.setConfirmPassword(confirmPassword);
            user.setName(name);
            user.setPhoneNum(phoneNum);
            user.setSurname(surname);
            user.setPassword(password);

            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("phoneNum", phoneNum);
            session.setAttribute("password", password);
            session.setAttribute("confirmPass", confirmPassword);

            userFacade.editUser(user);
        }
       if (newPhoneNum !=null) {
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            String phoneNum = newPhoneNum;
            String confirmPassword= newConfirmPass;
            //
            user.setConfirmPassword(confirmPassword);
            user.setName(name);
            user.setPhoneNum(phoneNum);
            user.setSurname(surname);
            user.setPassword(password);

            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("phoneNum", phoneNum);
            session.setAttribute("password", password);
            session.setAttribute("confirmPass", confirmPassword);

            userFacade.editUser(user);
        }
       if (newConfirmPass !=null) {
            String password = newPassword;
            String name = newName;
            String surname = newSurname;
            String phoneNum = newPhoneNum;
            String confirmPassword= newConfirmPass; 
            //
            user.setConfirmPassword(confirmPassword);
            user.setName(name);
            user.setPhoneNum(phoneNum);
            user.setSurname(surname);
            user.setPassword(password);

            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("phoneNum", phoneNum);
            session.setAttribute("password", password);
            session.setAttribute("confirmPass", confirmPassword);

            userFacade.editUser(user);
        }
       RequestDispatcher dis = request.getRequestDispatcher("menu.html");
       dis.forward(request, response);
    }
}
