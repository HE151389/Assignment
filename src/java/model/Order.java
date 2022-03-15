package model;

import java.util.ArrayList;
import java.util.Hashtable;

public class Order {
    private int id;
    private Customer cus;
    private Hashtable<Integer,ArrayList<OrderDetails>> hashtable = new Hashtable<>();
    private double totalMoney;

    public Order() {
    }

    public Order(int id, Customer cus, double totalMoney) {
        this.id = id;
        this.cus = cus;
        this.totalMoney = totalMoney;
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

    public Hashtable<Integer, ArrayList<OrderDetails>> getHashtable() {
        return hashtable;
    }

    public void setHashtable(Hashtable<Integer, ArrayList<OrderDetails>> hashtable) {
        this.hashtable = hashtable;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", cus=" + cus + ", hashtable=" + hashtable + ", totalMoney=" + totalMoney + '}';
    }
    
}
