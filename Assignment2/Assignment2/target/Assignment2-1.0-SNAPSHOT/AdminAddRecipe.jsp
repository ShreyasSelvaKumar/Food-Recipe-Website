<%-- 
    Document   : AdminAddRecipe
    Created on : Jul 8, 2024, 10:40:17 AM
    Author     : Shreyas
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="com.codejava.assignment2.AdminAddRecipesPojo"%>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Recipe</title>
</head>
<body>
    <h1>Add Recipe</h1>
    
    <%-- Handling form submission --%>

<%
    // Get form parameters
    String recipeName = request.getParameter("recipe_name");
    String ingredientsInput = request.getParameter("ingredients");
    String instructions = request.getParameter("instructions");

    if (recipeName != null && ingredientsInput != null && instructions != null) {
        // Split the ingredients string into a list
        List<String> ingredients = new ArrayList<>(List.of(ingredientsInput.split("\\s*,\\s*")));

        // Create a new recipe entity
        AdminAddRecipesPojo recipe = new AdminAddRecipesPojo(recipeName, ingredients, instructions);

        // Save the recipe to the database using Hibernate
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = hibSession.beginTransaction();

        hibSession.save(recipe);
        tx.commit();

        hibSession.close();

        out.println("Recipe added successfully!");
    } else {
        out.println("Please fill in all the fields.");
    }
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <a href="Manage_recipes_admin.jsp">Back to Admin Home</a>
</body>
</html>


