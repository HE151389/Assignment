package model;

public class OrderDetail {
    private String orderDetailID;
    private Customer orderCustomer;
    private Product orderAccessory;
    private int orderAccessoryQuantity;

    public OrderDetail() {
    }

    public OrderDetail(String orderDetailID, Customer orderCustomer, Product orderAccessory, int orderAccessoryQuantity) {
        this.orderDetailID = orderDetailID;
        this.orderCustomer = orderCustomer;
        this.orderAccessory = orderAccessory;
        this.orderAccessoryQuantity = orderAccessoryQuantity;
    }

    public String getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(String orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public Customer getOrderCustomer() {
        return orderCustomer;
    }

    public void setOrderCustomer(Customer orderCustomer) {
        this.orderCustomer = orderCustomer;
    }

    public Product getOrderAccessory() {
        return orderAccessory;
    }

    public void setOrderAccessory(Product orderAccessory) {
        this.orderAccessory = orderAccessory;
    }

    public int getOrderAccessoryQuantity() {
        return orderAccessoryQuantity;
    }

    public void setOrderAccessoryQuantity(int orderAccessoryQuantity) {
        if(orderAccessoryQuantity >= 0){
            this.orderAccessoryQuantity = orderAccessoryQuantity;
        }
        
    }
    
}
