package model;

import java.util.Hashtable;
import java.util.Map;

public class Cart {

    private int id;
    private Account acc;
    private Hashtable<Integer, CartDetail> hashtableCart = new Hashtable<>();
    private double totalMoney;

    public Cart() {
    }

    public Cart(int id, Account acc, double totalMoney) {
        this.id = id;
        this.acc = acc;
        this.totalMoney = totalMoney;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }

    public Hashtable<Integer, CartDetail> getHashtableCart() {
        return hashtableCart;
    }

    public void setHashtableCart(Hashtable<Integer, CartDetail> hashtableCart) {
        this.hashtableCart = hashtableCart;
    }

    public double getTotalMoney() {
        totalMoney = 0;
        for (Map.Entry<Integer, CartDetail> entry : hashtableCart.entrySet()) {
            CartDetail value = entry.getValue();
            totalMoney += value.getSubTotal();
        }
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Cart{" + "id=" + id + ", acc=" + acc + ", hashtableCart=" + hashtableCart + ", totalMoney=" + totalMoney + '}';
    }

    

}
