package model;

import java.sql.Date;

public class Order {
    private String orderID;
    private double totalMoney;
    private Date orderDate;
    private String orderNote;
    private Customer orderCustomer;

    public Order() {
    }

    public Order(String orderID, double totalMoney, Date orderDate, String orderNote, Customer orderCustomer) {
        this.orderID = orderID;
        this.totalMoney = totalMoney;
        this.orderDate = orderDate;
        this.orderNote = orderNote;
        this.orderCustomer = orderCustomer;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }

    public Customer getOrderCustomer() {
        return orderCustomer;
    }

    public void setOrderCustomer(Customer orderCustomer) {
        this.orderCustomer = orderCustomer;
    }
    
}
