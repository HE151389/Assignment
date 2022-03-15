package model;

import java.sql.Date;

public class Customer {
    private int cusID;
    private String name;
    private Date DoB;
    private String email;
    private Account cusAccount;

    public Customer() {
    }

    public Customer(String name, Date DoB, String email, Account cusAccount) {
        this.name = name;
        this.DoB = DoB;
        this.email = email;
        this.cusAccount = cusAccount;
    }

    public Customer(int cusID, String name, String email, Date DoB, Account cusAccount) {
        this.cusID = cusID;
        this.name = name;
        this.email = email;
        this.DoB = DoB;
        this.cusAccount = cusAccount;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Account getCusAccount() {
        return cusAccount;
    }

    public void setCusAccount(Account cusAccount) {
        this.cusAccount = cusAccount;
    }

    public Date getDoB() {
        return DoB;
    }

    public void setDoB(Date DoB) {
        this.DoB = DoB;
    }

    @Override
    public String toString() {
        return "Customer{" + "name=" + name + ", DoB=" + DoB + ", email=" + email + '}';
    }
    
}
