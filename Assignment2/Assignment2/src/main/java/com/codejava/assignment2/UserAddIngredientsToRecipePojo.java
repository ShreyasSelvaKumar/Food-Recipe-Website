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
public class UserAddIngredientsToRecipePojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String recipeName;

    @ElementCollection
    private List<String> ingredients;

    // Default constructor (required by JPA)
    public UserAddIngredientsToRecipePojo() {
    }

    // Constructor with parameters
    public UserAddIngredientsToRecipePojo(String recipeName, List<String> ingredients) {
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

    public List<String> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<String> ingredients) {
        this.ingredients = ingredients;
    }
}
