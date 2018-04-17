package business;

import java.io.Serializable;
import java.util.ArrayList;

public class Dog implements Serializable {
	
	private static final long serialVersionUID = 1L;

    private String name;
    private int age;
    private String type;



    public Dog() {
        name = "";
        age = 0;
        type = "";
    }
    
    public Dog(String name, int age, String type) {
        this.name = name;
        this.age = age;
        this.type = type;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public int getAge() {
        return this.age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }
    
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    
    
    
}
    

