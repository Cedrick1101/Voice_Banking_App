/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.business.SendEmail;
import za.ac.tut.entities.User;
import za.ac.tut.business.UserFacadeLocal;
import za.ac.tut.entities.Account;

/**
 *
 * @author acer
 */
public class RegisterServlet extends HttpServlet {
    @EJB
    private UserFacadeLocal userFacade;

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //start session
       HttpSession session = request.getSession(true);
       
       String email = request.getParameter("id");
       String name = request.getParameter("name");
       String surname = request.getParameter("surname");
       String phoneNum = request.getParameter("phoneNum"); 
       String password = request.getParameter("password");
       String confirmPass = request.getParameter("confirmPass");
       String accountType = request.getParameter("accountType");
       Double balance = Double.parseDouble(request.getParameter("balance"));
     
       Date creationDate = new Date();
        //instantiate the email
        SendEmail sm = new SendEmail();
         //get the account number
         Integer accountNum = sm.getUniqueRandonNum();
        
       session.setAttribute("accountNum", accountNum);
       session.setAttribute("name", name);
       session.setAttribute("surname", surname);
       session.setAttribute("phoneNum", phoneNum);
       session.setAttribute("email", email);
       session.setAttribute("password", password);
       session.setAttribute("confirmPass", confirmPass);
       session.setAttribute("accountType", accountType);
       session.setAttribute("balance", balance);
       session.setAttribute("creationDate", creationDate);
       
       
       if(password.equals(confirmPass)){
    
          //get the random code(OTP)
          String code = sm.getRandom();
              
   
              //create a user
      User user = createUser(email,name,surname,phoneNum,password, confirmPass,code, accountType,balance, creationDate, accountNum);
      session.setAttribute("user", user);
          userFacade.addUser(user);
           
       // boolean test = sm.sendEmail(user);
             
             //if(test){
             
              //session.setAttribute("user", user);
             
            // }
            
     
   
      RequestDispatcher disp = request.getRequestDispatcher("login.html");
      disp.forward(request, response);
           
       }
       
       
    
    }

   public User createUser( String email,String name,String surname,
           String phoneNum,String password,String confirmPass,
           String code,String accountType,Double balance, Date creationDate,Integer accountNum){
     
       
       Account account = new Account();
       
       account.setAccountType(accountType);
       account.setBalance(balance); 
       account.setId(accountNum);
       
         User user = new User();
       
       user.setConfirmPassword(confirmPass);
       user.setId(email);
       user.setName(name);
       user.setPhoneNum(phoneNum);
       user.setSurname(surname);
       user.setPassword(password);
       user.setCode(code);
       user.setCreationDate(creationDate);
       user.setAccount(account);
       
       
       return user;
   }
   
}
