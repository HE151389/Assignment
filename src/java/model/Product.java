package model;

public class Product {

    private int ID;
    private String name;
    private int quantity;
    private double price;
    private String form;
    private String from;
    private String urlImg1;
    private String urlImg2;
    private Category category;
    private String des;

    public Product() {
    }

    public Product(int ID, String name, int quantity, double price, String form, String from, String urlImg1, String urlImg2, Category category, String des) {

        this.ID = ID;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.form = form;
        this.from = from;
        this.urlImg1 = urlImg1;
        this.urlImg2 = urlImg2;
        this.category = category;

        this.des = des;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getUrlImg1() {
        return urlImg1;
    }

    public void setUrlImg1(String urlImg1) {
        this.urlImg1 = urlImg1;
    }

    public String getUrlImg2() {
        return urlImg2;
    }

    public void setUrlImg2(String urlImg2) {
        this.urlImg2 = urlImg2;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

}
