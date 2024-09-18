<%-- 
    Document   : UserDeleteIngredientsFromRecipe
    Created on : Jul 8, 2024, 8:41:55?AM
    Author     : Shreyas
--%>

<%@ page import="java.util.List" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.codejava.assignment2.UserDeleteIngredientsFromRecipePojo" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Ingredients from Recipe</title>
</head>
<body>
    <%@include file="adminnavigation.jsp" %>
    <%@include file="adminauth.jsp" %>
    <h2>Delete Ingredients from Recipe</h2>

    <form action="UserDeleteIngredientsFromRecipe.jsp" method="post">
        <label for="recipeName">Recipe Name:</label>
        <input type="text" id="recipeName" name="recipeName" required><br><br>

        <label for="ingredients">Ingredients (comma-separated):</label>
        <input type="text" id="ingredients" name="ingredients" required><br><br>

        <button type="submit">Delete Ingredients</button>
    </form>

    <%-- Include navigation or other shared elements --%>
    

    <%
        String recipeName = request.getParameter("recipeName");
        String ingredientsInput = request.getParameter("ingredients");

        if (recipeName != null && ingredientsInput != null) {
            List<String> ingredients = List.of(ingredientsInput.split("\\s*,\\s*"));

            // Use Hibernate to delete ingredients from the recipe
            Session hibSession = HibernateUtil.getSessionFactory().openSession();
            Transaction tx = hibSession.beginTransaction();

            for (String ingredient : ingredients) {
                UserDeleteIngredientsFromRecipePojo ingredientToDelete = new UserDeleteIngredientsFromRecipePojo(recipeName, ingredient);
                hibSession.delete(ingredientToDelete);
            }

            tx.commit();
            hibSession.close();
    %>

    <p>Ingredients successfully deleted from recipe: <%= recipeName %></p>

    <% } %>

</body>
</html>


