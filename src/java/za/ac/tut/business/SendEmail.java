/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.HashSet;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
public class SendEmail {
    


public String getRandom(){
    
    Random rand = new Random();
    int number = rand.nextInt(9999999);
    
    return String.format("%07d", number);
}

public boolean sendEmail(User user){
    
    boolean test = false;
    String toEmail = user.getId();
    String fromEmail = "technologiesmart42@gmail.com";
    String password = "smart Tech";
    
     try{
     
     Properties p = new Properties();
     
      p.setProperty("mail.smtp.host","smtp.gmail.com");
      p.setProperty("mail.smtp.port","587");
      p.setProperty("mail.smtp.auth", "true"); 
      p.setProperty("mail.smtp.starttls.enable","true");
    
      p.put("mail.smtp.socketFactory.port", "587");
      p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
      
      //get session
       Session session = Session.getInstance(p, new Authenticator(){
            @Override
        protected PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication (fromEmail , password);
        }  
             }); 
        Message mess = new MimeMessage(session);
       
        mess.setFrom(new InternetAddress(fromEmail)); 
        mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));      
        mess.setSubject("User Email Verification");
        mess.setText("Registered Successfully!Please enter this code to activate your account:" + user.getCode());
      
       // Transport.send(mess);
        
          test=true;
    }catch(Exception e){
        
        e.printStackTrace();
    }
         return test;
    
}
public  Integer getUniqueRandonNum(){

     Random rand = new Random ();        
     int randomNum=0;

       HashSet<Integer> set =   new HashSet<>();
  while (set.size() <1){

     randomNum = rand.nextInt(99999999)+10;
      set.add(randomNum) ;
  }
return randomNum;
}
    
}