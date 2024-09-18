<%-- 
    Document   : AdminDeleteRecipe
    Created on : Jul 8, 2024, 10:41:14 AM
    Author     : Shreyas
--%>

<%@page import="org.hibernate.Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.codejava.assignment2.AdminAddRecipesPojo"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>

<%
    String recipeName = request.getParameter("recipe_name");

    if (recipeName != null && !recipeName.isEmpty()) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();
        
        String hql = "FROM AdminAddRecipesPojo WHERE recipeName = :recipeName";
        Query query = hibSession.createQuery(hql);
        query.setParameter("recipeName", recipeName);
        AdminAddRecipesPojo recipe = (AdminAddRecipesPojo) query.uniqueResult();

        if (recipe != null) {
            hibSession.delete(recipe);
            hibSession.getTransaction().commit();
            out.println("Recipe deleted successfully.");
        } else {
            out.println("Recipe not found.");
        }

        hibSession.close();
    } else {
        out.println("Please provide a valid recipe name.");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Recipe</title>
</head>
<body>
    <a href="Manage_recipes_admin.jsp">Back to Admin Home</a>
</body>
</html>