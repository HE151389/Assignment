package model;

public class DiscountAccessory extends Accessory{
    private Accessory accessory;
    private double oldPrice;
    private double currentPrice;

    public DiscountAccessory() {
    }

    public DiscountAccessory(Accessory accessory, double oldPrice, double currentPrice) {
        this.accessory = accessory;
        this.oldPrice = oldPrice;
        this.currentPrice = currentPrice;
    }

    public Accessory getAccessory() {
        return accessory;
    }

    public void setAccessory(Accessory accessory) {
        this.accessory = accessory;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public double getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(double currentPrice) {
        this.currentPrice = currentPrice;
    }

    @Override
    public void setAccessoryPrice(double currentPrice) {
        super.setAccessoryPrice(currentPrice);
    }
    
}
