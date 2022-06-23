/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
@Local
public interface UserFacadeLocal {

    void addUser(User user);

    void editUser(User user);

    void removeUser(User user);

    User findUser(String id);

    List<User> findAllUsers();

    
}
