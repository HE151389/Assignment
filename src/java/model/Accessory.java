package model;

public class Accessory {

    private String accessoryID;
    private String accessoryName;
    private int accessoryQuantity;
    private double accessoryPrice;
    private String accessoryColor;
    private String accessoryForm;
    private String accessoryFrom;
    private String urlImg1;
    private String urlImg2;
    private AccessoryType accessoryType;

    public Accessory() {
    }

    public Accessory(String accessoryID, String accessoryName, int accessoryQuantity, double accessoryPrice, String accessoryColor, String accessoryForm, String accessoryFrom, String urlImg1, String urlImg2, AccessoryType accessoryType) {
        this.accessoryID = accessoryID;
        this.accessoryName = accessoryName;
        this.accessoryQuantity = accessoryQuantity;
        this.accessoryPrice = accessoryPrice;
        this.accessoryColor = accessoryColor;
        this.accessoryForm = accessoryForm;
        this.accessoryFrom = accessoryFrom;
        this.urlImg1 = urlImg1;
        this.urlImg2 = urlImg2;
        this.accessoryType = accessoryType;
    }
    
    public String getAccessoryID() {
        return accessoryID;
    }

    public void setAccessoryID(String accessoryID) {
        this.accessoryID = accessoryID;
    }

    public String getAccessoryName() {
        return accessoryName;
    }

    public void setAccessoryName(String accessoryName) {
        this.accessoryName = accessoryName;
    }

    public int getAccessoryQuantity() {
        return accessoryQuantity;
    }

    public void setAccessoryQuantity(int accessoryQuantity) {
        if (accessoryQuantity >= 0) {
            this.accessoryQuantity = accessoryQuantity;
        }
    }

    public double getAccessoryPrice() {
        return accessoryPrice;
    }

    public void setAccessoryPrice(double accessoryPrice) {
        if (accessoryPrice >= 0) {
            this.accessoryPrice = accessoryPrice;
        }
    }

    public String getAccessoryColor() {
        return accessoryColor;
    }

    public void setAccessoryColor(String accessoryColor) {
        this.accessoryColor = accessoryColor;
    }

    public String getAccessoryForm() {
        return accessoryForm;
    }

    public void setAccessoryForm(String accessoryForm) {
        this.accessoryForm = accessoryForm;
    }

    public String getAccessoryFrom() {
        return accessoryFrom;
    }

    public void setAccessoryFrom(String accessoryFrom) {
        this.accessoryFrom = accessoryFrom;
    }

    public AccessoryType getAccessoryType() {
        return accessoryType;
    }

    public void setAccessoryType(AccessoryType accessoryType) {
        this.accessoryType = accessoryType;
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
    
}
