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
import za.ac.tut.entities.Admin;

/**
 *
 * @author acer
 */
@Stateless
public class AdminFacade extends AbstractFacade<Admin> implements AdminFacadeLocal {
    @PersistenceContext(unitName = "VoiceBankingAppPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminFacade() {
        super(Admin.class);
    }

    @Override
    public void addAmin(Admin admin) {
             create(admin);
    }
   // @RolesAllowed("admin")
    @Override
    public void updateAmin(Admin admin) {
             edit(admin);
    }
    //@RolesAllowed("admin")
    @Override
    public void removeAdmin(Admin admin) {
          remove(admin);
    }
    //@RolesAllowed("admin")
    @Override
    public Admin findAdmin(String id) {
           return find(id);
    }
    //@RolesAllowed("admin")
    @Override
    public List<Admin> findAllAdmins() {
              return findAll();
    }
    
}
