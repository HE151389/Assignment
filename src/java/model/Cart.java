package model;

import java.util.ArrayList;

public class Cart {
    private int cartID;
    private Customer customer;
    private double total;
    private ArrayList<CartDetail> listCartDetails = new ArrayList<>();

    public Cart() {
    }

    public Cart(int cartID, Customer customer, double total) {
        this.cartID = cartID;
        this.customer = customer;
        this.total = total;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public ArrayList<CartDetail> getListCartDetails() {
        return listCartDetails;
    }

    public void setListCartDetails(ArrayList<CartDetail> listCartDetails) {
        this.listCartDetails = listCartDetails;
    }
    
}
