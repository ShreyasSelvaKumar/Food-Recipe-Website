<%-- 
    Document   : UserAddIngredientsToRecipe
    Created on : Jul 8, 2024, 8:30:53?AM
    Author     : Shreyas
--%>

<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.codejava.assignment2.UserAddIngredientsToRecipePojo" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Ingredients to Recipe</title>
</head>
<body>
    <h2>Add Ingredients to Recipe</h2>

    <form action="addIngredientsToRecipe" method="post">
        <label for="recipeName">Recipe Name:</label>
        <input type="text" id="recipeName" name="recipeName" required><br><br>

        <label for="ingredients">Ingredients:</label>
        <input type="text" id="ingredients" name="ingredients" required><br><br>

        <button type="submit">Add Ingredients</button>
    </form>

    <%-- Include navigation or other shared elements --%>
    <%@include file="adminnavigation.jsp" %>
    <%@include file="adminauth.jsp" %>

    <% 
        String recipeName = request.getParameter("recipeName");
        String ingredientsInput = request.getParameter("ingredients");

        if (recipeName != null && ingredientsInput != null) {
            List<String> ingredients = List.of(ingredientsInput.split("\\s*,\\s*"));

            // Create a new UserAddIngredientsToRecipePojo instance
            UserAddIngredientsToRecipePojo recipe = new UserAddIngredientsToRecipePojo(recipeName, ingredients);
            recipe.setIngredients(ingredients);
            recipe.setRecipeName(recipeName);

            // Save the recipe and ingredients to the database using Hibernate
            Session hibSession = HibernateUtil.getSessionFactory().openSession();
            Transaction tx = hibSession.beginTransaction();
            hibSession.save(recipe);
            tx.commit();
            hibSession.close();
    %>

    <p>Ingredients successfully added to recipe: <%= recipeName %></p>

    <% } %>

</body>
</html>
