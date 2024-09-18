package com.codejava.assignment2;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

/**
 * JPA Entity class for AdminDeleteRecipesPojo.
 * Represents a recipe that can be deleted by an admin.
 * 
 * Author: Shreyas
 */
@Entity
@Table(name = "recipes")
public class AdminDeleteRecipesPojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "recipename", nullable = false, unique = true)
    private String recipeName;

    // Default constructor
    public AdminDeleteRecipesPojo() {}

    // Constructor with parameters
    public AdminDeleteRecipesPojo(String recipeName) {
        this.recipeName = recipeName;
    }

    // Getter and Setter methods
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }
}
