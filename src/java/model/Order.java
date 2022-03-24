package model;

import java.util.ArrayList;
import java.util.Hashtable;

public class Order {
    private int id;
    private Customer cus;
    private Hashtable<Integer,OrderDetails> hashtable = new Hashtable<>();
    private double totalMoney;
    private String status;

    public Order() {
    }

    public Order(int id, Customer cus, double totalMoney) {
        this.id = id;
        this.cus = cus;
        this.totalMoney = totalMoney;
    }

    public Order(int id, Customer cus, double totalMoney, String status) {
        this.id = id;
        this.cus = cus;
        this.totalMoney = totalMoney;
        this.status = status;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customer getCus() {
        return cus;
    }

    public void setCus(Customer cus) {
        this.cus = cus;
    }

    public Hashtable<Integer, OrderDetails> getHashtable() {
        return hashtable;
    }

    public void setHashtable(Hashtable<Integer, OrderDetails> hashtable) {
        this.hashtable = hashtable;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", cus=" + cus + ", hashtable=" + hashtable + ", totalMoney=" + totalMoney + '}';
    }
    
}
