/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Account;

/**
 *
 * @author acer
 */
@Local
public interface AccountFacadeLocal {

    void addAccount(Account account);

    void editAccount(Account account);

    void removeAccount(Account account);

    Account findAccount(Integer id);

    List<Account> findAllAccounts();

   
    
}
