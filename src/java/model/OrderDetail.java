package model;

public class OrderDetail {
    private String orderDetailID;
    private Customer orderCustomer;
    private Accessory orderAccessory;
    private String orderAccessoryQuantity;

    public OrderDetail() {
    }

    public OrderDetail(String orderDetailID, Customer orderCustomer, Accessory orderAccessory, String orderAccessoryQuantity) {
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

    public Accessory getOrderAccessory() {
        return orderAccessory;
    }

    public void setOrderAccessory(Accessory orderAccessory) {
        this.orderAccessory = orderAccessory;
    }

    public String getOrderAccessoryQuantity() {
        return orderAccessoryQuantity;
    }

    public void setOrderAccessoryQuantity(String orderAccessoryQuantity) {
        this.orderAccessoryQuantity = orderAccessoryQuantity;
    }
    
}
