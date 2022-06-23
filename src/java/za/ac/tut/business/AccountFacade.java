/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.business;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.Account;

/**
 *
 * @author acer
 */
@Stateless
public class AccountFacade extends AbstractFacade<Account> implements AccountFacadeLocal {
    @PersistenceContext(unitName = "VoiceBankingAppPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountFacade() {
        super(Account.class);
    }

    @Override
    public void addAccount(Account account) {
       create(account);
    }

    @Override
    public void editAccount(Account account) {
             edit(account);
    }

    @Override
    public void removeAccount(Account account) {
         remove(account);
      }

    @Override
    public Account findAccount(Integer id) {
       return find(id);
    }

    @Override
    public List<Account> findAllAccounts() {
    return findAll();
    }
    
}
