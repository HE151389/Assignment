package model;

public class OrderDetails {

    private Order order;
    private Product product;
    private int quantity;
    private double subTotal;

    public OrderDetails() {
    }

    public OrderDetails(Order order, Product product, int quantity) {
        this.order = order;
        this.product = product;
        this.quantity = quantity;
        this.subTotal = (double) quantity * product.getPrice();
    }

    public OrderDetails(Order order, Product product, int quantity, double subTotal) {
        this.order = order;
        this.product = product;
        this.quantity = quantity;
        this.subTotal = subTotal;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
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
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "order=" + order + ", product=" + product + ", quantity=" + quantity + ", subTotal=" + subTotal + '}';
    }

}
