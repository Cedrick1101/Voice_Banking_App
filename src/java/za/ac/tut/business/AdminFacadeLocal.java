/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Admin;

/**
 *
 * @author acer
 */
@Local
public interface AdminFacadeLocal {

    void addAmin(Admin admin);

    void updateAmin(Admin admin);

    void removeAdmin(Admin admin);

    Admin findAdmin(String id);

    List<Admin> findAllAdmins();

   
    
}
