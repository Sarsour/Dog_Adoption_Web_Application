package business;

import java.io.Serializable;
import java.util.ArrayList;

public class Item implements Serializable {
	
	private static final long serialVersionUID = 1L;

    private String item;
    private Double price;
    
    public Item() {
        item = "";
        price = null;
    }
    
    public Item(String item, Double price) {
        this.item = item;
        this.price = price;
    }
    
    public String getItem() {
        return this.item;
    }
    
    public void setItem(String item) {
        this.item = item;
    }
    
    public Double getPrice() {
        return price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }


    
    
}
