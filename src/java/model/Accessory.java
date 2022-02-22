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
    
}
