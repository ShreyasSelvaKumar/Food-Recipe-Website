<%-- 
    Document   : createrecipe
    Created on : Jul 8, 2024, 4:36:04?AM
    Author     : Shreyas
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Recipe</title>
</head>
<body>
    <h1>Create Recipe</h1>
    
    <form method="post" action="ProcessRecipe.jsp">
        <label for="recipe_name">Recipe Name:</label>
        <input type="text" id="recipe_name" name="recipe_name" required>
        <br><br>
        
        <label for="ingredients">Select Ingredients:</label>
        <br>
        <input type="checkbox" id="ingredient1" name="ingredients" value="1">
        <label for="ingredient1">Ingredient 1</label><br>
        
        <input type="checkbox" id="ingredient2" name="ingredients" value="2">
        <label for="ingredient2">Ingredient 2</label><br>
        
        <input type="checkbox" id="ingredient3" name="ingredients" value="3">
        <label for="ingredient3">Ingredient 3</label><br>
        
        <input type="checkbox" id="ingredient4" name="ingredients" value="4">
        <label for="ingredient4">Ingredient 4</label><br>
        
        <input type="checkbox" id="ingredient5" name="ingredients" value="5">
        <label for="ingredient5">Ingredient 5</label><br>
        
        <input type="checkbox" id="ingredient6" name="ingredients" value="6">
        <label for="ingredient6">Ingredient 6</label><br>
        
        <input type="checkbox" id="ingredient7" name="ingredients" value="7">
        <label for="ingredient7">Ingredient 7</label><br>
        
        <input type="checkbox" id="ingredient8" name="ingredients" value="I8">
        <label for="ingredient8">Ingredient 8</label><br>
        
        <input type="checkbox" id="ingredient9" name="ingredients" value="9">
        <label for="ingredient9">Ingredient 9</label><br>
        
        <input type="checkbox" id="ingredient10" name="ingredients" value="10">
        <label for="ingredient10">Ingredient 10</label><br>
        
        <!-- Add more ingredients as needed -->
        <br><br>
        
        <button type="submit">Create Recipe</button>
    </form>
</body>
</html>

