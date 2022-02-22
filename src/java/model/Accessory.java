package model;

public class Accessory {

    private String accessoryID;
    private String accessoryName;
    private int accessoryQuantity;
    private double accessoryPrice;
    private String accessoryColor;
    private String accessoryNote;
    private String accessoryTypeID;

    public Accessory() {
    }

    public Accessory(String accessoryID, String accessoryName, int accessoryQuantity, double accessoryPrice, String accessoryColor, String accessoryNote, String accessoryTypeID) {
        this.accessoryID = accessoryID;
        this.accessoryName = accessoryName;
        this.accessoryQuantity = accessoryQuantity;
        this.accessoryPrice = accessoryPrice;
        this.accessoryColor = accessoryColor;
        this.accessoryNote = accessoryNote;
        this.accessoryTypeID = accessoryTypeID;
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

    public String getAccessoryNote() {
        return accessoryNote;
    }

    public void setAccessoryNote(String accessoryNote) {
        this.accessoryNote = accessoryNote;
    }

    public String getAccessoryTypeID() {
        return accessoryTypeID;
    }

    public void setAccessoryTypeID(String accessoryTypeID) {
        this.accessoryTypeID = accessoryTypeID;
    }

}
