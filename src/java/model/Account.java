package model;

public class Account {
    private int accountID;
    private String userName;
    private String password;

    public Account() {
    }

    public Account(int accountID, String userName, String password) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
    }

    public Account(String userName, String password) {
        this.userName = userName;
        this.password = password;
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
<<<<<<< HEAD

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }
=======
>>>>>>> parent of 2d533a2 (details + login  + signup)
    
}
