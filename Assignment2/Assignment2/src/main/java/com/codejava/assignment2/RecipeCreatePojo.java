/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.codejava.assignment2;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "recipes")
public class RecipeCreatePojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String recipeName;

    @ElementCollection
    private List<Long> ingredients;

    // Default constructor
    public RecipeCreatePojo() {
    }

    // Constructor with parameters
    public RecipeCreatePojo(String recipeName, List<Long> ingredients) {
        this.recipeName = recipeName;
        this.ingredients = ingredients;
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

    public List<Long> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<Long> ingredients) {
        this.ingredients = ingredients;
    }
}

