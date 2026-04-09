package beans;

import java.io.Serializable;

/*
 * DataBean.java
 * Stores user data for display in JSP
 * Implements Serializable as required
 */
public class DataBean implements Serializable {

    private String firstName;
    private String lastName;
    private int age;
    private String email;
    private String phone;

    // Default constructor
    public DataBean() {
    }

    // Getters and Setters

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}