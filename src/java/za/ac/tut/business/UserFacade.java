/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.User;

/**
 *
 * @author acer
 */
@Stateless
public class UserFacade extends AbstractFacade<User> implements UserFacadeLocal {
    @PersistenceContext(unitName = "VoiceBankingAppPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserFacade() {
        super(User.class);
    }

    @Override
    public void addUser(User user) {
              create(user);
    }
   // @RolesAllowed("admin")
    @Override
    public void editUser(User user) {
          edit(user);
    }
   // @RolesAllowed("admin")
    @Override
    public void removeUser(User user) {
               remove(user);
    }
    //@RolesAllowed("admin")
    @Override
    public User findUser(String id) {
               return find(id);
    }
   // @RolesAllowed("admin")
    @Override
    public List<User> findAllUsers() {
         return findAll();
    }
    
}
