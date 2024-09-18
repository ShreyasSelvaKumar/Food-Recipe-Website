package com.codejava.assignment2;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name = "recipes")
public class UserDeleteIngredientsFromRecipePojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "recipename", nullable = false)
    private String recipeName;

    @Column(name = "ingredient", nullable = false)
    private String ingredient;

    // Default constructor
    public UserDeleteIngredientsFromRecipePojo() {}

    // Constructor with parameters
    public UserDeleteIngredientsFromRecipePojo(String recipeName, String ingredient) {
        this.recipeName = recipeName;
        this.ingredient = ingredient;
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

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }
}
