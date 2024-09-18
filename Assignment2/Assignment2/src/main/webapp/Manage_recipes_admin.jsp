<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manage Recipes</title>
</head>
<body>
    <h2>Add/Delete Recipes</h2>

    <%@include file="adminnavigation.jsp" %> <br>
    <%@include file="adminauth.jsp" %>

    <form action="AdminAddRecipe.jsp" method="post">
        <label for="recipe_name">Recipe Name:</label>
        <input type="text" id="recipe_name" name="recipe_name" required><br><br>

        <label for="ingredients">Ingredients (comma-separated):</label>
        <input type="text" id="ingredients" name="ingredients" required><br><br>

        <label for="instructions">Instructions:</label>
        <textarea id="instructions" name="instructions" required></textarea><br><br>

        <button type="submit" name="add_recipe">Add Recipe</button>
    </form>

    <br><br>

    <form action="AdminDeleteRecipe.jsp" method="post">
        <label for="recipe_name">Recipe Name:</label>
        <input type="text" id="recipe_name" name="recipe_name" required><br><br>

        <button type="submit" name="delete_recipe">Delete Recipe</button>
    </form>
</body>
</html>
