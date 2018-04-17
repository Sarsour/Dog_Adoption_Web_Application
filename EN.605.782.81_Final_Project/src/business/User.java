package business;

import java.io.Serializable;
import java.util.ArrayList;

public class User implements Serializable {
	
	private static final long serialVersionUID = 1L;

    private String firstName;
    private String lastName;
    private String password;
    private String email;
    private String shippingAddress;
    private String billingAddress;
    private Long creditCardNumber;
    private String userName;
    
    private String adoptedPet;
    private String[] purchasedItems;
    private double[] purchasedItemsPrices;
    private float finalPrice;

    ArrayList<String> purchasedItemsList = new ArrayList<String>();
    ArrayList<Double> purchasedItemsPricesList = new ArrayList<Double>();
    
    public User() {
        firstName = "";
        lastName = "";
        email = "";
        password = "";
        shippingAddress = "";
        billingAddress = "";
        creditCardNumber = null;
        userName = "";
    }
    
    public User(String firstName, String lastName, String email, String password, String shippingAddress, String billingAddress, Long creditCardNumber, String userName) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.shippingAddress = shippingAddress;
        this.billingAddress = billingAddress;
        this.creditCardNumber = creditCardNumber;
        this.userName = userName;
    }
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getShippingAddress() {
        return this.shippingAddress;
    }
    
    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
    
    public String getBillingAddress() {
        return this.billingAddress;
    }
    
    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }
    
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public Long getCreditCardNumber() {
        return this.creditCardNumber;
    }
    
    public void setUserName(Long creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }
    
}
