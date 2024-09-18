/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.codejava.assignment2;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "users")  // Assuming the table name is 'users'
public class AdminModifyUserPojo {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;  // Assuming there is an 'id' column in the 'users' table

    @Column(name = "username", nullable = false, unique = true)
    private String newUsername;

    @Column(name = "email", nullable = false, unique = true)
    private String newEmail;

    @Column(name = "password", nullable = false)
    private String newPassword;

    // Default constructor
    public AdminModifyUserPojo() {}

    // Constructor with parameters
    public AdminModifyUserPojo(String newUsername, String newEmail, String newPassword) {
        this.newUsername = newUsername;
        this.newEmail = newEmail;
        this.newPassword = newPassword;
    }

    // Getter and Setter methods
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNewUsername() {
        return newUsername;
    }

    public void setNewUsername(String newUsername) {
        this.newUsername = newUsername;
    }

    public String getNewEmail() {
        return newEmail;
    }

    public void setNewEmail(String newEmail) {
        this.newEmail = newEmail;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}

