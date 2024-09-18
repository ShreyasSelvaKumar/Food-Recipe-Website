<%-- 
    Document   : after_admin_login
    Created on : Apr 17, 2024, 4:56:17 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage </title>
    </head>
    <body>
        <h1>Admin Homepage </h1>
        <%@include file="adminnavigation.jsp" %> <br> <br> <br>
         <form action="Manage_users_admin.jsp" method="post">
            <button type="submit">Manage Users</button>
        </form> <br><br>
        <form action="Manage_recipes_admin.jsp" method="post">
            <button type="submit">Manage Recipes</button>
        </form><br><br>
    </body>
</html>
