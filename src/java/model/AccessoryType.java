package model;

import java.util.ArrayList;

public class AccessoryType {
    private String accessoryTypeID;
    private String accessoryTypeName;
    private ArrayList<Accessory> listaAccessorys  = new ArrayList();

    public AccessoryType() {
    }

    public AccessoryType(String accessoryTypeID, String accessoryTypeName) {
        this.accessoryTypeID = accessoryTypeID;
        this.accessoryTypeName = accessoryTypeName;
    }

    public String getAccessoryTypeID() {
        return accessoryTypeID;
    }

    public void setAccessoryTypeID(String accessoryTypeID) {
        this.accessoryTypeID = accessoryTypeID;
    }

    public String getAccessoryTypeName() {
        return accessoryTypeName;
    }

    public void setAccessoryTypeName(String accessoryTypeName) {
        this.accessoryTypeName = accessoryTypeName;
    }

    public ArrayList<Accessory> getListaAccessorys() {
        return listaAccessorys;
    }

    public void setListaAccessorys(ArrayList<Accessory> listaAccessorys) {
        this.listaAccessorys = listaAccessorys;
    }
    
}
