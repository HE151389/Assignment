package model;

public class Accessory {
    private String accessoryID;
    private String accessoryName;
    private String accessoryQuantity;
    private String accessoryPrice;
    private String accessoryColor;
    private String accessoryNote;
    private String accessoryTypeID;

    public Accessory() {
    }

    public Accessory(String accessoryID, String accessoryName, String accessoryQuantity, String accessoryPrice, String accessoryColor, String accessoryNote, String accessoryTypeID) {
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

    public String getAccessoryQuantity() {
        return accessoryQuantity;
    }

    public void setAccessoryQuantity(String accessoryQuantity) {
        this.accessoryQuantity = accessoryQuantity;
    }

    public String getAccessoryPrice() {
        return accessoryPrice;
    }

    public void setAccessoryPrice(String accessoryPrice) {
        this.accessoryPrice = accessoryPrice;
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
