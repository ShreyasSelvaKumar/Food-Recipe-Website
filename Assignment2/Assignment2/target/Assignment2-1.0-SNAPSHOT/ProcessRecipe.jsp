<%-- 
    Document   : ProcessRecipe
    Created on : Jul 8, 2024, 4:38:34 AM
    Author     : Shreyas
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.codejava.assignment2.RecipeCreatePojo" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>

<%
    // Retrieve form data
    String recipeName = request.getParameter("recipe_name");
    String[] selectedIngredients = request.getParameterValues("ingredients");

    // Convert selected ingredient IDs from String[] to List<Long>
    List<Long> ingredientIds = null;
    if (selectedIngredients != null) {
        ingredientIds = Arrays.stream(selectedIngredients)
                        .map(Long::parseLong)
                        .collect(Collectors.toList());
    }

    // Hibernate operations
    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;
    try {
        tx = hibSession.beginTransaction();

        // Create RecipeCreatePojo object
        RecipeCreatePojo recipe = new RecipeCreatePojo();
        recipe.setRecipeName(recipeName);
        recipe.setIngredients(ingredientIds);

        // Save recipe object to database
        hibSession.save(recipe);

        tx.commit();
        out.println("Recipe '" + recipeName + "' created successfully!");

    } catch (Exception e) {
        if (tx != null) {
            tx.rollback();
        }
        e.printStackTrace();
        out.println("Error creating recipe: " + e.getMessage());
    } finally {
        hibSession.close();
    }
%>
