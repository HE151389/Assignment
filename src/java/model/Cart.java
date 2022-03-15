package model;

import java.util.LinkedHashMap;
import java.util.Map;

public class Cart {
    private LinkedHashMap<Integer,Product> cart = new LinkedHashMap<>();
    private double totalMoney;
            
    public Cart() {
    }

    public Cart(double totalMoney) {
        this.totalMoney = totalMoney;
    }
    
    public LinkedHashMap<Integer, Product> getCart() {
        return cart;
    }

    public void setCart(LinkedHashMap<Integer, Product> cart) {
        this.cart = cart;
    }

    public double getTotalMoney() {
        totalMoney = 0;
        for (Map.Entry<Integer, Product> entry : cart.entrySet()) {
            Product value = entry.getValue();
            totalMoney+= value.getPrice() * value.getQuantity();
        }
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Cart{" + "cart=" + cart + ", totalMoney=" + totalMoney + '}';
    }
    
}
