package model;

public class Account {
    private String accountID;
    private String userName;
    private String password;

    public Account() {
    }

    public Account(String accountID, String userName, String password) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
    }
    
    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
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
    
}
