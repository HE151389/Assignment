package model;

public class CartDetail {

    private Cart cart;
    private Product product;
    private int quantity;
    private double subTotal;

    public CartDetail() {
    }

    public CartDetail(Cart cart, Product product, int quantity) {
        this.cart = cart;
        this.product = product;
        this.quantity = quantity;
        this.subTotal = product.getPrice() * quantity;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSubTotal() {
        subTotal = product.getPrice() * quantity;
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public String toString() {
        return "CartDetail{" + "cart=" + cart + ", product=" + product + ", quantity=" + quantity + ", subTotal=" + subTotal + '}';
    }

}
