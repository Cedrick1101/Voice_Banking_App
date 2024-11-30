/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author acer
 */
@Entity
@Table(name="Account_TBL", schema = "test_db")
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="Account_No")
    private Integer id;
    private Double balance;
    private String accountType;
    
 public Account(){
     
 }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
    
    @Override
    public String toString() {
        return "za.ac.tut.entities.Account[ id=" + id + " ]";
    }
    
}
