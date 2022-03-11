package model;

public class Account {
    private int accountID;
    private String userName;
    private String password;
    private boolean isAdmin;

    public Account() {
    }

    public Account(int accountID, String userName, String password, boolean isAdmin) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    public Account(String userName, String password, boolean isAdmin) {
        this.userName = userName;
        this.password = password;
        this.isAdmin = isAdmin;
    }
    
    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }


}
